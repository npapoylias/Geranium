initialization
initializeWidgets

	pausedOrStopped := true.
	"report output consumptionHistory.
	report output consumptionHistoryOfBuildings."
	self createNavigationToolbar.
	self createMap.
	self createModelEditor.
	self createInputDiagrams.
	self createOutputDiagrams.
	self createMapModelTabs.
	self createInputDiagramTabs.
	self createOutputDiagramTabs.

