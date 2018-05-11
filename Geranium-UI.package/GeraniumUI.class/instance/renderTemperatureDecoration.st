initialization
renderTemperatureDecoration

	| shape el |
	shape := RTEllipse new
	color: (Color red alpha: 0.2); "make dependend to the temperature"
	size: 80.
	tempContinue := true.
	tempAnimation := [ :e | tempContinue ifTrue: [mapView view addAnimation: (RTLinearMove new to: 600 atRandom @ 600 atRandom during: 2 on: e; after: [tempAnimation value: e]) ]].
	100 "make depended to the temperature"
		timesRepeat: [ el := shape element translateTo: 600 atRandom @ 600 atRandom.
			el @ RTDraggable.
			mapView view add: el.
		 	tempAnimation value: el ].
	tempContinue := false.