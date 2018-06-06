visualization
consumptionHistoryCumSumAt: t 
	^ (consumptionHistoryCumSum ifNil: [  
		consumptionHistoryCumSum := consumptionHistory collect: [ :h | h cumsum ]
	]) collect: [ :s | s at: t ]