initialization
createMap
	mapDiagram := RoassalModel new.
	mapDiagram
		script: [ :view :canvas |  |catColorDistribution|
			mapView := GeraniumUIOsmView new. 
			catColorDistribution := (report inputVisitor residences collect: [ :r | r category ]) frequenciesAsColorDistribution.
			mapView
				renderInView: view;
				mapWithBuildingsCenteredAroundBoundingBox: (self report input areaOfInterest coordinates) coordinatesAsOsmString
				colored: catColorDistribution
				"geraniumAreaMapExample". 
			self boundingBox: mapView boundingBox.
			self renderTemperatureHumidityDecoration.
			self renderClimateConsumptionIndicators ] 