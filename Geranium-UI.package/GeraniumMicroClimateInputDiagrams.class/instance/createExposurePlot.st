initialization
createExposurePlot

		| b ds exposures|
	exposures := (report inputVisitor residences collect: [ :r |  r exposure ]) frequencies.

	exposurePlot := RoassalModel new.
	exposurePlot script: [ :v :c | 
		b := RTGrapher new view: v.
		ds := RTHorizontalData new.
		ds barShape color: Color orange trans.
		ds points: exposures."#(3 2 -4 9 5.5)."
		ds x: #key.
		ds y: #value.
		b add: ds.
		b build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v.
	]