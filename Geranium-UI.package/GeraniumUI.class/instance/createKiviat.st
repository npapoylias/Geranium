accessing
createKiviat
	"parametrize as before"
	| b processed|
	kiviat := RoassalModel new.
	kiviat 
		script: [  :view :canvas |
			processed ifNil: [processed := true. self processCanvas: canvas and: view].
			b := { #max -> {(DPEG maximum * 1000) rounded . 5 . 100 } .  #actual -> self overview "#b -> (3 to: 6) . #c -> (6 to: 9 ). #d -> (9 to: 12)" }
							kiviatForParameters: { #Structure . #Climate . #Social .} "Optimum is 0 0 0 -- ie measure non-aware"
							withCaption: nil 
							inView: view
							colorPalet: Color distinctTenStrongColors.
			b build.
			view canvas camera "focusOnCenterScaled."focusOnCenterScaled: view canvas extent * 0.8.
			view @ RTDraggableView.
			view @ (RTGridView new gridSize: 10).
			view @ RTZoomableView.
			view @ RTDoubleScrollBar.
		"self halt."
		"b build.
		b view"
	].
	"whiteBackground := (RTRoundedBox new
		color: Color white trans;
		size: 10;
		borderRadius: 10) element."
"	elementsAndEdges := b view elements , b view edges.
	RTNest new on: whiteBackground nest: elementsAndEdges."

	"e children do: [ :el | 
		el trachelShape extent: el trachelShape extent / 10.
		el trachelShape class = TRLabelShape
			ifTrue: [ el trachelShape fontSize: 2 ]
	]."
	"e color: Color transparent."
	"^ whiteBackground"
	"c := b view canvas color: Color transparent.
	^ (RTBitmap new form: (c buildMorph imageForm scaledToSize: 30 @ 30)) element"