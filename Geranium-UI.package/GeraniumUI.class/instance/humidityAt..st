visualization
humidityAt: t

	^ (humidityHistory ifNil: [humidityHistory := self report input climate humidity]) at: t