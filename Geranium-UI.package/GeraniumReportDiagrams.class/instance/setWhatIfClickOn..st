accessing
setWhatIfClickOn: aCanvas

	aCanvas when: TRMouseClick do: [ :event | (GeraniumWhatIfDiagrams new: report) open ].