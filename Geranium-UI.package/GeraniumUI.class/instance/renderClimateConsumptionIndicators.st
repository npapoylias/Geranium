rendering
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
	minMaxConsumptionLabels ifNil: [ 
		"should be se by the dsl normally" 
		minMaxConsumptionLabels :=  { 
			(self boxColored: (Color green alpha: 0.4)) translateTo: (self relativeToBoundingBox: -48@15).
			(self label: '828431', 'kWh' colored: #black) translateTo: (self relativeToBoundingBox: -46.6@15).
			(self boxColored: (Color red alpha: 0.4)) translateTo: (self relativeToBoundingBox: -48@18).
			(self label: '3710126', 'kWh' colored: #black) translateTo: (self relativeToBoundingBox: -46.5@18).
			"edge := (RTLine new color: Color orange; width: 1) edgeFrom: a to: b" "width: 2; color: Color orange."
		}	do: [ :i | mapView view add: i ]
	].
	consumptionLabel := ((RTLabel new color: Color black; height: 3) elementOn: consumption asString, 'kWh') 
		translateTo: (self relativeToBoundingBox: 17@38).
	mapView view add: temperatureLabel; add: humidityLabel; add: consumptionLabel. 
	tempContinue = false ifTrue: [mapView view signalUpdate]. "there is an additional signal update from animation -- should animate more cleanly"
		