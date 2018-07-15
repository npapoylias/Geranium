*Geranium-Distributions
asHistogram: aColor withCaption: aString inView: aView describing: anotherCollection
	
	| b ds |
	
	"(1 to: 10) identityHistogram: Color yellow withCaption: 'hallo'"
	
	b := RTGrapher new.
	b extent: self vizSize.
	aView ifNotNil: [ b view: aView ].
	ds := RTData new.
	ds interaction popup.
	ds points: anotherCollection.
	ds y: [:x | self at: (anotherCollection indexOf: x)]."This is sub-optimal to say the least.. revise"
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
	b addDecorator: RTMeanDevVarDecorator new moveInFront.
	aString ifNotNil: [self addLabel: aString onGraph: b].
	^ b 