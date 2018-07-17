initialization
createBoxPlot
	
	| incomes buildingProfiles residenceProfiles processed |
	buildingProfiles := report inputVisitor resolvedResidenceProfiles.
	residenceProfiles := (buildingProfiles collect: [ :p | 
		p class = UrbanProfileForAppartmentBlock 
			ifTrue: [ p resolvedAppartmentProfiles ] 
			ifFalse: [ p ]
		]) deepFlatten asSet.
	incomes := (residenceProfiles collect: [ :rp | rp name -> (rp income next: 100) ])
		asOrderedCollection.
	
	boxplot := RoassalModel new.
	boxplot script: [ :v :c | | b |
		processed ifNil: [processed := true. self processCanvas: c and: v].
		b := incomes boxedPlot: (Color lightBrown) withCaption: nil inView: v.
		b axisY
			noDecimal;
			title: 'Income'.
		b build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v
	]