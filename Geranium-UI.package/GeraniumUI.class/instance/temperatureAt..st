visualization
temperatureAt: t

	^ (temperatureHistory ifNil: [temperatureHistory := self report input climate temperature]) at: t