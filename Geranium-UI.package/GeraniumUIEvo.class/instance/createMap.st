examples
createMap
	mapDiagram := RoassalModel new.
	mapDiagram
		script: [ :view :canvas | 
			mapView := GeraniumUIOsmView new.
			mapView
				renderInView: view;
				geraniumAreaMapExampleStEloi. "TODO: should be determined by script here"
			self boundingBox: mapView boundingBox.
			self renderTemperatureHumidityDecoration.
			self renderClimateConsumptionIndicators ] 