initialization
createScatterPlot
	| processed |
	scatterplot  := RoassalModel new.
	scatterplot script: [ :v :c | 
		|b ts|

		ts := report input climateProfile temperatureSeries.
		ts := (1 to: ts size by: 24) collect: [:t | (ts at: t) + self temperature  ].
		b :=  ts connectedPlot: (Color red alpha: 0.4).
		b view: v.
		b axisX
			noDecimal;
			title: 'Day'.
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
	