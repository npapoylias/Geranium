as yet unclassified
createClimatePlot
	
	climatePlot := RoassalModel new.
	climatePlot script: [ :v :c |
		| b |
		b := RTStackBarPlot new view: v.
		b interaction popupText.
		b colorPalette colors: (Array with: Color blue with: Color lightBlue).
		b add: #(37 33 0 0 0) title: 'Building Type'.
		b add: #(24 26 17 3 0) title: 'Appertment Type'.
		b add: #(25 29 15 1 0) title: 'House Type'.
		"b addLegend: #('strongly agree' 'agree' 'neutral' 'disagree' 'strongly disagree')."
		b barWidth: 260 height: 20.
		b addLabelToBars: [ :assoc | (assoc key / b totalSum * 100) asInteger asString , '%' ] if: [ :assoc | assoc key > 5 ] color: Color white.
		b build.
		b view.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v
	]