visualization
consumptionHistoryCumSumAt: t 
	^ (consumptionHistoryCumSum ifNil: [  
		consumptionHistoryCumSum := self consumptionHistory collect: [ :h | h cumsum ]
	]) collect: [ :s | s at: t ]