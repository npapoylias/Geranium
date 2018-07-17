initialization
createBarStack

	| residencesTypes processed |

	residencesTypes := (report inputVisitor residences collect: [ :r | (report scenarioEntityOf: r) name ]).
	barStack := RoassalModel new.
	barStack script: [ :v :c |
		| b |
		processed ifNil: [processed := true. self processCanvas: c and: v].
		b:=residencesTypes identityHistogram: Color orange withCaption: nil inView: v.
		b addDecorator: RTMeanDevVarDecorator new moveInFront.
		b axisY
			noDecimal;
			title: 'Instances'.
		b build.
		b view.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
	].

	"| b |
b := RTStackBarPlot new.
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