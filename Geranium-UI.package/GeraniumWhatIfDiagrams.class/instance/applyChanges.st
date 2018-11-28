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
	otherCategories := categories asDictionary keys asOrderedCollection remove: DPEA; remove: DPEB; yourself.
	newCategories := GRCategoricalDistribution new 
		categories: newCategories keys;
		probabilities: newCategories values.
	newAwareness := self adjustAwareness: awarenessPercentage.
	newAwareness := GRCategoricalDistribution new 
		categories: {ConsumptionAware . ConsumptionUnaware};
		probabilities: newAwareness.
	newReport := report copy "areaOfInterest: report areaOfInterest copy". "you should deep copy here normally.."
	newTemperature := newReport input climateProfile temperatureSeries collect: [: t | t - oldTemperature + self temperature "restore and alter"].
	awarenessDiff := (self awarenessDiff: residences) rounded.
	dpeBDiff := (self dpeBDiff: residences) rounded.
	newReport inputVisitor residences do: [ :r |
		awarenessDiff < 0
			ifTrue: [ r occupants awareness = ConsumptionAware ifTrue: [ r occupants awareness: ConsumptionUnaware. awarenessDiff := awarenessDiff + 1 ] ]
			ifFalse: [ awarenessDiff = 0 ifFalse: [ r occupants awareness = ConsumptionUnaware ifTrue: [ r occupants awareness: ConsumptionAware. awarenessDiff := awarenessDiff - 1 ] ] ].
		r category ~= DPEA ifTrue: [
			dpeBDiff < 0
				ifTrue: [ r category = DPEB ifTrue: [ r category: otherCategories atRandom. dpeBDiff := dpeBDiff + 1 ] ]
				ifFalse: [ dpeBDiff = 0 ifFalse: [ r category ~= DPEB ifTrue: [ r category: DPEB. dpeBDiff := dpeBDiff - 1 ] ] ]. 	
		].
		"r category: newCategories next. r occupants awareness: newAwareness next "
	].
	newReport input climateProfile resetTemperatureTo: newTemperature. 
	newReport areaOfInterest climateData: (newReport areaOfInterest climateData copy temperature: newTemperature).
	1 to: 365*24 do: [ :t | newReport areaOfInterest step: t ].
	
	newReport := GeraniumReport new
		areaOfInterest: newReport areaOfInterest;
		inputVisitor: newReport inputVisitor;
		outputReport: (GeraniumOutputReport new with: newReport areaOfInterest andInput: newReport inputVisitor).
	newReport whatIf at: #temperature put: self temperature.
	(GeraniumUI basicNew report: newReport; initialize; openWithSpec; window) maximize.