instance creation
identityHistogram: aColor withCaption: aString inView: aView

	|samples|
	samples := OrderedCollection new.
	1 to: 1000 do: [:i | samples add: self numericalNext ].
	^ samples identityHistogram: aColor withCaption: aString inView: aView

