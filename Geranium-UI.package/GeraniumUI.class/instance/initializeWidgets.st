initialization
initializeWidgets

	pausedOrStopped := true.
	self createNavigationToolbar.
	self createMap.
	self createInputDiagrams.
	self createOutputDiagrams.
	self createMapModelTabs.
	self createInputDiagramTabs.
	self createOutputDiagramTabs