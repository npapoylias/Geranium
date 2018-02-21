visiting
visitClimateProfile: aClimateProfile

	| climate |
	
	climate := MicroClimateData new.
	climate 
		temperature: (aClimateProfile temperatureSeriesForYears: years);
		humidity: (aClimateProfile humiditySeriesForYears: years).
	^ climate
	