initialization
createMap
	mapDiagram := RoassalModel new.
	mapDiagram
		script: [ :view :canvas |  |catColorDistribution|
			mapView := GeraniumUIOsmView new. 
			catColorDistribution := (report inputVisitor residences collect: [ :r | r category ]) frequenciesAsColorDistribution.
			mapView
				renderInView: view;
				mapWithBuildingsCenteredAroundBoundingBox: (self report input areaOfInterest coordinates) 
				colored: catColorDistribution
				"geraniumAreaMapExample". 
			self boundingBox: mapView boundingBox.
			self renderTemperatureHumidityDecoration.
			"self renderKiviatIn: view. ""should do it only once"
			self renderClimateConsumptionIndicators ] 