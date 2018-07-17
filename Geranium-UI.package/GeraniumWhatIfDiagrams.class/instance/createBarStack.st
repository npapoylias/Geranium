initialization
createBarStack
	|ownership awareness residences  |
	
	residences := report inputVisitor residences.
	ownership := (report inputVisitor residences collect: [ :r |  r occupants ownership ]) frequencies.
	ownership := { ownership at: true . ownership at: false } asArray.
	awareness := (report inputVisitor residences collect: [ :r |  r occupants awareness ]) frequencies.
	awareness := { (awareness at: ConsumptionAware) asFloat / residences size * 100 . 
		(awareness at: ConsumptionUnaware) asFloat / residences size * 100 } asArray.

	awarenessPercentage := awareness at: 1.

	barStack := RoassalModel new.
	barStack script: [ :v :c |
		| b |
		b vertical.
		b interaction popupText.
		b colorPalette colors: (RTColorPalette qualitative colors: 3 scheme:'Set1') reverse."{Color red. Color green}"
		b add: ownership title: 'Ownership'.
		b add: (self adjustAwareness: awareness) title: 'Awareness'.
		"b add: #(25 29 15 1 0) title: 'House Type'."
		"b addLegend: #('strongly agree' 'agree' 'neutral' 'disagree' 'strongly disagree')."
		b barWidth: 40 height: 260.
		b addLegend: #('yes' 'no').
		b addLabelToBars: [ :assoc | (assoc key printShowingDecimalPlaces: 1 ), '%' ] if: [ :assoc | assoc key > 5 ] color: Color white.
		b build.
		b view.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v
	]