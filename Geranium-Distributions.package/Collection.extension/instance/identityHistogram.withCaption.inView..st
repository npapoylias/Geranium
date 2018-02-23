*Geranium-Distributions
identityHistogram: aColor withCaption: aString inView: aView
	| b ds histDict samples |
	
	"(1 to: 10) identityHistogram: Color yellow withCaption: 'hallo'"
	
	b := RTGrapher new.
	b extent: self vizSize.
	aView ifNotNil: [ b view: aView ].
	ds := RTData new.
	ds interaction popup.
	histDict := self frequencies.
	ds points: histDict keys sorted.
	ds y: [ :x | histDict at: x ].
	ds dotShape rectangle color: aColor.
	ds barShape
		color: aColor;
		width: 20.
	b add: ds.
	ds
		barChartWithBarTitle: [ :x | 
			x isFloat
				ifTrue: [ x printShowingDecimalPlaces: 2 ]
				ifFalse: [ (x class = Association
						and: [ x key isFloat and: [ x value isFloat ] ])
						ifTrue: [ (x key printShowingDecimalPlaces: 2) , ' - '
								, (x value printShowingDecimalPlaces: 2) ]
						ifFalse: [ x asString ] ] ].
	b axisY.
	b axisX
		noTick;
		noLabel.
	self addLabel: aString onGraph: b.
	^ b