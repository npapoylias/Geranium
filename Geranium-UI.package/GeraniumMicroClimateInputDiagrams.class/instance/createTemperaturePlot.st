initialization
createTemperaturePlot
	
	| processed |
	temperaturePlot := RoassalModel new.
	temperaturePlot script: [ :v :c | 
		|b|
		processed ifNil: [processed := true. self processCanvas: c and: v].
		b := report input climateProfile temperaturePlot.
		b view: v.
		b axisX
			noDecimal;
			title: 'Hour'.
		b axisY
			noDecimal;
			title: 'Temperature'.
		b build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v
	].
	