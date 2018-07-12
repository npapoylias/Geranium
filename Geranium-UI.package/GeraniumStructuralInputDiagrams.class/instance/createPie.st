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
			with: DPEA
			with: DPEB
			with: DPEC
			with: DPED).
d := [0 -> 100] asRangedDistribution.
b slice: [:a | d next].
"b normalizer distinctColor."
b labeled.
b emphasize: DPEA by: 20.
b emphasize: DPEB by: 20.
b build.
v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
v @ RTDraggableView.
v @ (RTGridView new gridSize: 10).
v @ RTZoomableView.
v @ RTDoubleScrollBar.
v]