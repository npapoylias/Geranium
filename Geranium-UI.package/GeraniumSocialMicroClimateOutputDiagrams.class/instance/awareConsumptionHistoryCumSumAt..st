initialization
awareConsumptionHistoryCumSumAt: t 
	^ (awareConsumptionHistoryCumSum ifNil: [  
		awareConsumptionHistoryCumSum := self awareConsumptionHistory cumsum
	]) at: t 