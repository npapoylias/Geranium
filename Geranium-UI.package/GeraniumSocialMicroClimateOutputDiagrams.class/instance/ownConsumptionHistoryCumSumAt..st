initialization
ownConsumptionHistoryCumSumAt: t 
	^ (ownConsumptionHistoryCumSum ifNil: [  
		ownConsumptionHistoryCumSum := self ownConsumptionHistory cumsum
	]) at: t