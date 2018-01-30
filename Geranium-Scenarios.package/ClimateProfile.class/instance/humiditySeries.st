accessing
humiditySeries

	^ humiditySeries ifNil: [ self computeYearlyHumiditySeries ]