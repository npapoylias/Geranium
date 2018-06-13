visualization
renderClimateConsumptionIndicators
	|consumption temperature humidity |
	consumptionLabel ifNotNil: [  
		mapView view 
			removeElement: consumptionLabel;
			removeElement: temperatureLabel;
			removeElement: humidityLabel
	].
	consumption := (self consumptionHistoryCumSumAt: step + 1) first printShowingDecimalPlaces: 1"The total".
	temperature := (self temperatureAt: step + 1) printShowingDecimalPlaces: 1.
	humidity := (self humidityAt: step + 1) printShowingDecimalPlaces: 1.
	temperatureLabel := ((RTLabel new color: (Color red); height: 5) 
		elementOn: temperature asString,'°C') 
		translateTo: (self relativeToBoundingBox: 17@13).
	humidityLabel := ((RTLabel new color: Color blue; height: 4) elementOn: humidity asString, '°H') 
		translateTo: (self relativeToBoundingBox: 19@21).
	consumptionLabel := ((RTLabel new color: Color black; height: 3) elementOn: consumption asString, 'kWh') 
		translateTo: (self relativeToBoundingBox: 17@40).
	mapView view add: temperatureLabel; add: humidityLabel; add: consumptionLabel. 
		