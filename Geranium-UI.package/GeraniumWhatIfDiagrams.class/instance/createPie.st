initialization
createPie
	|residences categories processed |
	
	residences := report inputVisitor residences.
	categories := residences collect: [ :r | r category ].
	categories :=  (categories frequencies collect: [ :value | (value asFloat / residences size) * 100 ]) associations.
	dpeAPercentage := categories asDictionary at: DPEA.
	
	pie := RoassalModel new.
	pie
		script: [ :v :c | |b| 
			processed ifNil: [processed := true. self processCanvas: c and: v].
			b := (self adjustDPE: categories) ringPieWithCaption: nil inView: v.
			b build.
			v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
			v @ RTDraggableView.
			v @ (RTGridView new gridSize: 10).
			v @ RTZoomableView.
			v @ RTDoubleScrollBar.
			v
		]