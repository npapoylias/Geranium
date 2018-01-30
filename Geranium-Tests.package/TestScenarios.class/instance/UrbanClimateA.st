tests
UrbanClimateA

	"for more precision in the next version apart from actual meteorological data, 
	we should use the heat index (for apparent temperature): https://en.wikipedia.org/wiki/Heat_index"

	ClimateProfile new 
		named: #UrbanClimateA; 
		medianTemperature: (20.0 ~ 1.5) | [0 -> 32]; 
		seasonalTemperatureVariation: 3;
		medianHumidity: [ 40.0 ~> 100.0 ];
		seasonalHumidityVariation: 2. 