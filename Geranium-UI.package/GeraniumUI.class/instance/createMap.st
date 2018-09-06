initialization
createMap
	mapDiagram := RoassalModel new.
	mapDiagram
		script: [ :view :canvas |  
			mapView := GeraniumUIOsmView new. 
			mapView
				renderInView: view;
				mapWithBuildingsCenteredAroundBoundingBox: (self report input areaOfInterest coordinates) coordinatesAsOsmString.
				"geraniumAreaMapExample".
			self boundingBox: mapView boundingBox.
			self renderTemperatureHumidityDecoration.
			self renderClimateConsumptionIndicators ] 