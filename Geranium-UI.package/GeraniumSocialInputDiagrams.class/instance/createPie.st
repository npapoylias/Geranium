initialization
createPie
	pie := RoassalModel new.
	pie
		script: [ :v :c | | b d|
b := RTPieBuilder new view: v;yourself.
b interaction popup.
b
	objects:
		(Array 
			with: Couple
			with: Family
			with: SingleAdult).
d := [0 -> 100] asRangedDistribution.
b slice: [:a | d next].
b normalizer distinctColor.
b labeled.
b emphasize: Couple by: 20.
b emphasize: Family by: 20.
b normalizer distinctColor.
"b normalizer normalizeColorUsing: Color defaultColors4."
b build.
v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
v @ RTDraggableView.
v @ (RTGridView new gridSize: 10).
v @ RTZoomableView.
v @ RTDoubleScrollBar.
v]