accessing
report: aNewReport

	report := aNewReport.
	Transcript show: (report whatIf at: #temperature ifAbsentPut: [0]); cr. 