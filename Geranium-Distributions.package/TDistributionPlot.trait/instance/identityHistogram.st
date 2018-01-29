instance creation
identityHistogram

	| b ds histDict samples|
b := RTGrapher new.

"We defien the size of the charting area"
ds := RTData new.
"When the mouse is above a bar, say which class we are point at"
ds interaction popup.

samples := OrderedCollection new.
1 to: 1000 do: [:i | samples add: self numericalNext ].
histDict := samples frequencies.

"Each subclass of RTShape will be a bar"
ds points: histDict keys sorted.

"The height of a bar will be the number of methods (defined in the instance side)"
ds y: [:x | histDict at: x].

"We set a color of the rectangle"
ds dotShape rectangle color: Color blue.

"Set the width of a bar"
ds barShape
	color: Color blue;
	width: 20.
b add: ds.
ds barChartWithBarTitle: #asString.
b axisY.
b axisX
	noTick;
	noLabel.
^ b