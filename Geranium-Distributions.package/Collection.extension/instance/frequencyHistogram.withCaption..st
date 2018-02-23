*Geranium-Distributions
frequencyHistogram: aColor withCaption: aString

	| b ds histDict samples|
	
	"[|x| x:= PMGaussianGenerator new. 
	((1 to: 100) collect: [:i | x next]) 
		frequencyHistogram: Color orange withCaption: 'hallo'] value"
	
b := RTGrapher new.
b extent: self vizSize.
"We defien the size of the charting area"
ds := RTData new.
"When the mouse is above a bar, say which class we are point at"
ds interaction popup.

histDict := self frequenciesWithGroups: 15.

"Each subclass of RTShape will be a bar"
ds points: histDict keys sorted.

"The height of a bar will be the number of methods (defined in the instance side)"
ds y: [:x | histDict at: x].

"We set a color of the rectangle"
ds dotShape rectangle color: aColor.

"Set the width of a bar"
ds barShape
	color: aColor;
	width: 20.
b add: ds.
ds barChartWithBarTitle: [:x | 
	x isFloat 
		ifTrue: [ x printShowingDecimalPlaces: 2 ]
		ifFalse: [ 
			(x class = Association and: [x key isFloat and: [x value isFloat]])
				ifTrue: [ (x key printShowingDecimalPlaces: 2) , ' - ' , (x value printShowingDecimalPlaces:2)]
				ifFalse: [ x asString ]
		]
	].
b axisY.
b axisX
	noTick;
	noLabel.
self addLabel: aString onGraph: b.
^ b 