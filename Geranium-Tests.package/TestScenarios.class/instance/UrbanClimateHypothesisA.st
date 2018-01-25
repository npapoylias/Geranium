tests
UrbanClimateHypothesisA

	ClimateProfile new 
		named: #UrbanClimateHypothesis; 
		temperature: (20 ~ 3) | [0 - 32] varyingSeasonally: 3
		"support also constant distribution for singular numbers"
		"yearlyMedianTemperature: 20 withStandardDeviation: 3 varyingSeasonally:3"