instance creation
histogramWithGroups: numberOfGroups

	| samples|
	samples := OrderedCollection new.
	1 to: 1000 do: [:i | samples add: self numericalNext ].
	^ samples histogramWithGroups: numberOfGroups