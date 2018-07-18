initialization
applyChanges

	| residences categories newCategories newAwareness newTemperature newReport |
	report areaOfInterest clearHistory.
	report areaOfInterest buildings do: [ :b | b clearHistory ].
	"change areaOfInterst"
	residences := report inputVisitor residences.
	categories := residences collect: [ :r | r category ].
	categories :=  (categories frequencies collect: [ :value | (value asFloat / residences size) * 100 ]) associations.
	newCategories := (self adjustDPE: categories) asDictionary.
	newCategories := GRCategoricalDistribution new 
		categories: newCategories keys;
		probabilities: newCategories values.
	newAwareness := self adjustAwareness: awarenessPercentage.
	newAwareness := GRCategoricalDistribution new 
		categories: {ConsumptionAware . ConsumptionUnaware};
		probabilities: newAwareness.
	newReport := report copy.
	newTemperature := newReport input climateProfile temperatureSeries collect: [: t | t + self temperature].
	newReport inputVisitor residences do: [ :r | r category: newCategories next. r occupants awareness: newAwareness next ].
	newReport input climateProfile resetTemperatureTo: newTemperature. 
	1 to: 365*24 do: [ :t | newReport areaOfInterest step: t ].
	newReport := GeraniumReport new
		areaOfInterest: report areaOfInterest;
		inputVisitor: report inputVisitor;
		outputReport: (GeraniumOutputReport new with: report areaOfInterest andInput: report inputVisitor).
	GeraniumUI basicNew report: newReport; initialize; openWithSpec.