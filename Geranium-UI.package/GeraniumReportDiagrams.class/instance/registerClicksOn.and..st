accessing
registerClicksOn: aCanvas and: aView
	". (GeraniumWhatIfDiagrams new: report) open"
	aCanvas 
		when: TRMouseLeftClick 
		do: [ :event | aView copy inspect ].
	aCanvas 
		when: TRMouseRightClick 
		do: [ :event | (GeraniumWhatIfDiagrams new: report) open ].