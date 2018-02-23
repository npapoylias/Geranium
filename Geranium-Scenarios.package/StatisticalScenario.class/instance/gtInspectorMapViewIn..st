ui
gtInspectorMapViewIn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'Scenario Map';
		initializeView: [ GeraniumUIOsmView new  
						mapWithBuildingsCenteredAroundBoundingBox: self coordinatesAsOsmString.
		].