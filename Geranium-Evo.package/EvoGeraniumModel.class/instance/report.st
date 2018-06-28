examples
report
	| r |
	Building disableHistory.
	r := self class simulation runForTotalConsumptionReport.
	Building enableHistory.
	^ r