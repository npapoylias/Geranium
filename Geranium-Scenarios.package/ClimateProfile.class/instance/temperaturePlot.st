accessing
temperaturePlot

	| b ds |
	
	b := RTGrapher new.
	b extent: 300 @ 200.
	ds := RTData new.
		ds noDot.
		ds points: (ClimateProfile new yearlyMedianTemperature: 20 withStandardDeviation: 3 varyingSeasonally:3; temperatureSeries) .
		ds connectColor: Color red.
		b add: ds.
	b
		axisX;
		axisY.
	b build.
	^ b view.
