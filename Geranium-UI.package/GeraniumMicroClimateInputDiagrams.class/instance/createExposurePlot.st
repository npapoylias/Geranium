initialization
createExposurePlot

		| b ds exposures|
	exposures := (report inputVisitor residences collect: [ :r |  r exposure ]) frequencies. 
	0 to: 6 do: [ :i | (exposures keys includes: i) ifFalse: [ exposures at: i put: 0 ] ].
	exposures := (exposures associations sort: [:x :y | x key < y key]) collect: [:a | a value].
	exposurePlot := RoassalModel new.
	exposurePlot script: [ :v :c | 
		self storeCanvas: c and: v.
		b := exposures
			connectedDottedPlot: Color magenta withCaption: nil inView: v.
		b axisX
			noDecimal;
			title: 'Exposure'.
		b axisY
			noDecimal;
			title: 'Instances'.
		b build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v.
	]