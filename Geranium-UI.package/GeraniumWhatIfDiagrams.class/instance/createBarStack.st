initialization
createBarStack
	|ownership awareness residences  processed |
	
	residences := report inputVisitor residences.
	"ownership := (report inputVisitor residences collect: [ :r |  r occupants ownership ]) frequencies.
	ownership := { ownership at: true . ownership at: false } asArray."
	awareness := (report inputVisitor residences collect: [ :r |  r occupants awareness ]) frequencies.
	awareness := { (awareness at: ConsumptionAware ifAbsent: [0]) asFloat / residences size * 100 . 
		(awareness at: ConsumptionUnaware ifAbsent: [0]) asFloat / residences size * 100 } asArray.

	awarenessPercentage := awareness at: 1.

	barStack := RoassalModel new.
	barStack script: [ :v :c | |es lb|
		es := (RTBox new
			color: [:i | i <= awarenessPercentage ifTrue: [Color green alpha: 0.4] ifFalse: [Color red alpha: 0.4]];
	size: 30) elementsOn: (1 to: 100).
v addAll: es.
RTGridLayout on: es.
"		| b |
		b := RTStackBarPlot new view: v.

		b vertical.
		b interaction popupText.
		b colorPalette colors: (RTColorPalette qualitative colors: 3 scheme:'Set1') reverse.
		b add: (self adjustAwareness: awareness) title: 'Awareness'.
		b barWidth: 40 height: 260.
		b addLegend: #('yes' 'no').
		b addLabelToBars: [ :assoc | (assoc key printShowingDecimalPlaces: 1 ), '%' ] if: [ :assoc | assoc key > 5 ] color: Color white.
		b build.
		b view."
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		lb := RTLegendBuilder new.
		lb view: v.
		lb addColorFadingFrom: Color green to: Color red text: 'Yes/No'.
		lb build.
		v
	]