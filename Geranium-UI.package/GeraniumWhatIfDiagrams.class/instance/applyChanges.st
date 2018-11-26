initialization
applyChanges

	| residences categories newCategories newAwareness newTemperature newReport awarenessDiff dpeBDiff otherCategories |
	report areaOfInterest clearHistory.
	report areaOfInterest buildings do: [ :b | b clearHistory ].
	"change areaOfInterst"
	residences := report inputVisitor residences.
	categories := residences collect: [ :r | r category ].
	categories :=  (categories frequencies collect: [ :value | (value asFloat / residences size) * 100 ]) associations.
	newCategories := (self adjustDPE: categories) asDictionary.
	otherCategories := categories asDictionary keys asOrderedCollection remove: DPEA; remove: DPEB.
	newCategories := GRCategoricalDistribution new 
		categories: newCategories keys;
		probabilities: newCategories values.
	newAwareness := self adjustAwareness: awarenessPercentage.
	newAwareness := GRCategoricalDistribution new 
		categories: {ConsumptionAware . ConsumptionUnaware};
		probabilities: newAwareness.
	newReport := report copy.
	newTemperature := newReport input climateProfile temperatureSeries collect: [: t | t + self temperature].
	awarenessDiff := (self awarenessDiff: residences) rounded.
	dpeBDiff := (self dpeBDiff: residences) rounded.
	newReport inputVisitor residences do: [ :r |
		self halt.
		awarenessDiff < 0
			ifTrue: [ r occupants awareness = ConsumptionAware ifTrue: [ r occupants awareness: ConsumptionUnaware. awarenessDiff := awarenessDiff + 1 ] ]
			ifFalse: [ awarenessDiff = 0 ifFalse: [ r occupants awareness = ConsumptionUnaware ifTrue: [ r occupants awareness: ConsumptionAware. awarenessDiff := awarenessDiff - 1 ] ] ].
		r category ~= DPEA ifTrue: [
			dpeBDiff < 0
				ifTrue: [ r category = DPEB ifTrue: [ r occupants category: otherCategories any. dpeBDiff := dpeBDiff + 1 ] ]
				ifFalse: [ awarenessDiff = 0 ifFalse: [ r category ~= DPEB ifTrue: [ r occupants category: DPEB. dpeBDiff := dpeBDiff - 1 ] ] ]. 	
		].
		"r category: newCategories next. r occupants awareness: newAwareness next "
	].
	newReport input climateProfile resetTemperatureTo: newTemperature. 
	1 to: 365*24 do: [ :t | newReport areaOfInterest step: t ].
	newReport := GeraniumReport new
		areaOfInterest: report areaOfInterest;
		inputVisitor: report inputVisitor;
		whatIfAt: #temperature put: self temperature;
		outputReport: (GeraniumOutputReport new with: report areaOfInterest andInput: report inputVisitor).
	(GeraniumUI basicNew report: newReport; initialize; openWithSpec; window) maximize.