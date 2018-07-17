accessing
setWhatIfClickOn: aCanvas
	". (GeraniumWhatIfDiagrams new: report) open"
	aCanvas 
		when: TRMouseLeftClick 
		do: [ :event | aCanvas view copy inspect ].
	aCanvas 
		when: TRMouseRightClick 
		do: [ :event | (GeraniumWhatIfDiagrams new: report) open ].