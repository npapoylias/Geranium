initialization
processCanvas: aCanvas and: aView

	aCanvas 
		when: TRMouseLeftClick 
		do: [ :event | Transcript show: (report whatIf at: #temperature ifAbsentPut: [0]); cr. (GeraniumWhatIfDiagrams new: report) open ].