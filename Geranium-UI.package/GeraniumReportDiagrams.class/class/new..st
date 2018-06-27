instance creation
new: aReport

	^ self basicNew
		report: aReport;
		initialize;
		yourself