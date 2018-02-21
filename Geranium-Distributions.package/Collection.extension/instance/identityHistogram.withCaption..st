*Geranium-Distributions
identityHistogram: aColor withCaption: aString
	| b ds histDict samples |
	"We defien the size of the charting area"
	"When the mouse is above a bar, say which class we are point at"
	"Each subclass of RTShape will be a bar"
	"The height of a bar will be the number of methods (defined in the instance side)"
	"We set a color of the rectangle"
	"Set the width of a bar"
	b := RTGrapher new.
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