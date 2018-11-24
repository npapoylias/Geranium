initialization
processCanvas: aCanvas and: aView

	aCanvas 
		when: TRMouseLeftClick 
		do: [ :event | (GeraniumWhatIfDiagrams new: report) open ].