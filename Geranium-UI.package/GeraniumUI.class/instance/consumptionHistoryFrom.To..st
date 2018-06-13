visualization
consumptionHistoryFrom: showMin To: showMax
	^ self consumptionHistory
		collect: [ :h | h copyFrom: showMin to: showMax ]