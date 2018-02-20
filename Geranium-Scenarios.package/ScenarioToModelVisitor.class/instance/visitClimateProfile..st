visiting
visitClimateProfile: aClimateProfile

	| climate |
	
	climate := MicroClimateData new.
	climate 
		temperature: (aClimateProfile temperatureSeriesForYears: years next);
		humidity: (aClimateProfile humiditySeriesForYears: years next).
	^ climate
	