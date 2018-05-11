initialization
renderTemperatureDecoration

	| shape el |
	shape := RTEllipse new
	color: (Color red alpha: 0.2); "make dependend to the temperature"
	size: 10.
	tempContinue := true.
	tempAnimation := [ :e | tempContinue ifTrue: [mapView view addAnimation: (RTLinearMove new to: self atRandomInsideBoundingBox during: 2 on: e; after: [tempAnimation value: e]) ]].
	100 "make depended to the temperature"
		timesRepeat: [ el := shape element translateTo: self atRandomInsideBoundingBox.
			el @ RTDraggable.
			mapView view add: el.
		 	tempAnimation value: el ].
	tempContinue := false.