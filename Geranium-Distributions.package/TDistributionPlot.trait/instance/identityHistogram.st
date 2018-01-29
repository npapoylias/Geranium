instance creation
identityHistogram

	|samples|
	samples := OrderedCollection new.
	1 to: 1000 do: [:i | samples add: self numericalNext ].
	^ samples identityHistogram

