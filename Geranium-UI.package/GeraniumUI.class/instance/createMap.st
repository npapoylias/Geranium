initialization
createMap
	mapDiagram := RoassalModel new.
	mapDiagram
		script: [ :view :canvas | 
			mapView := GeraniumUIOsmView new.
			mapView
				renderInView: view;
				geraniumAreaMapExample.
			self boundingBox: mapView boundingBox.
			self renderTemperatureHumidityDecoration.
			self renderClimateConsumptionIndicators ] 