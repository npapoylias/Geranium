initialization
createPerBuildingTypePlot
	buildingTypePlot := RoassalModel new.
	buildingTypePlot script: [ :v :c | 
		(self consumptionHistoryCumSumAt: step + 1)
						asHistogram: Color blue
						withCaption: nil
						inView: v
						describing:
							((self report output buildingProfiles
								collect: [ :p | p first name asString ]) asOrderedCollection
								addFirst: 'Total';
								yourself).	"scenarios per building is a collection -- fix !"
		self halt.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v
	]