accessing
setWhatIfClickOn: canvas

	canvas when: TRMouseClick do: [ :event | (GeraniumWhatIfDiagrams new: report) openWithSpec ].