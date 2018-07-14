initialization
createBarStack

	| buildingTypes appartmentTypes houseTypes|

	buildingTypes := (report inputVisitor buildings collect: [ :b | report scenarioEntityOf: b ]) frequencies.
	appartmentTypes := (report inputVisitor residences select: [ :r | r isKindOf: Appartement  ] 
		thenCollect: [ :b | report scenarioEntityOf: b ]) frequencies.
	houseTypes := (report inputVisitor residences select: [ :r | r isKindOf: House  ] 
		thenCollect: [ :b | report scenarioEntityOf: b ]) frequencies.
	self halt.
	barStack := RoassalModel new.
	barStack script: [ :v :c |
		| b |
		b := RTStackBarPlot new view: v.
		b interaction popupText.
		b colorPalette colors: (Array with: Color blue with: Color lightBlue).
		b add: buildingTypes values title: 'Building Type'.
		b add: appartmentTypes values title: 'Appartment Type'.
		b add: houseTypes values title: 'House Type'.
		"b addLegend: #('strongly agree' 'agree' 'neutral' 'disagree' 'strongly disagree')."
		b barWidth: 260 height: 20.
		b addLabelToBars: [ :assoc | 
			assoc key asString , '%' ] if: [ :assoc | assoc key > 5 ] color: Color white.
		b build.
		b view.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v
	]