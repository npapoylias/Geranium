accessing
registerClicksOn: aCanvas and: aView
	". (GeraniumWhatIfDiagrams new: report) open"
	"aCanvas 
		when: TRMouseLeftClick 
		do: [ :event | aView copy inspect ]."
	aCanvas 
		when: TRMouseLeftClick 
		do: [ :event | (GeraniumWhatIfDiagrams new: report) open].