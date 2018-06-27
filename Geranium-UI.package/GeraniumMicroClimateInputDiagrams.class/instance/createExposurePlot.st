initialization
createExposurePlot

		| b ds |

	exposurePlot := RoassalModel new.
	exposurePlot script: [ :v :c | 
		b := RTGrapher new view: v.
		ds := RTHorizontalData new.
		ds barShape color: Color orange trans.
		ds points: #(3 2 -4 9 5.5).
		b add: ds.
		b build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v.
	]