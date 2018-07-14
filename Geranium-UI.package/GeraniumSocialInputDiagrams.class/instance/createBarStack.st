initialization
createBarStack
"b := RTStackBarPlot new.
b vertical.
b interaction popupText.
b colorPalette colors: (Array with: Color green with: Color red).
b add: #(37 33 ) title: 'SampleText1'.
b add: #(24 26 ) title: 'SampleText2'.
b add: #(25 29 ) title: 'SampleText3'.
b add: #(30 33 ) title: 'SampleText4'.
b addLegend: #('yes' 'no').
b barWidth: 40 height: 260.
b
	addLabelToBars: [:assoc | (assoc key / b totalSum * 100) asInteger asString , '%']
		if: [:assoc | assoc key > 5]
		color: Color black.
b build.
^ b view"
	barStack := RoassalModel new.
	barStack script: [ :v :c |
		| b |
		b := RTStackBarPlot new view: v.
		b vertical.
		b interaction popupText.
		b colorPalette colors: (RTColorPalette qualitative colors: 2)"{Color red. Color green}".
		b add: #(37 63) title: 'Ownership'.
		b add: #(24 76) title: 'Awareness'.
		"b add: #(25 29 15 1 0) title: 'House Type'."
		"b addLegend: #('strongly agree' 'agree' 'neutral' 'disagree' 'strongly disagree')."
		b barWidth: 40 height: 260.
		b addLegend: #('yes' 'no').
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