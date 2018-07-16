initialization
createScatterPlot
	scatterplot  := RoassalModel new.
	scatterplot script: [ :v :c | 
		|b|
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
	