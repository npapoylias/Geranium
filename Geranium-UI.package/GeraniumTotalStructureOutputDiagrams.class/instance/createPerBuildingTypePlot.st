initialization
createPerBuildingTypePlot
	| b |
	buildingTypePlot := RoassalModel new.
	buildingTypePlot script: [ :v :c | 
		self storeCanvas: c and: v.
		b := (self consumptionHistoryCumSumAt: step + 1)
						asHistogram: Color green
						withCaption: nil
						inView: v
						describing:
							((self report output buildingProfiles
								collect: [ :p | p first name asString ]) asOrderedCollection
								addFirst: 'Total';
								yourself).	"scenarios per building is a collection -- fix !"
		b axisY
			title: 'Total kWh'.
		b build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ (RTGridView new gridSize: 10).
		v
	]