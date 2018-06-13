initialization
createOutputDiagramTabs
	| tab |
	tabmgrOutput := self newTabManager.
	tab := self newTab.
	tab model: outputDiagrams.
	tab
		label: 'Electricity';
		closeable: false;
		icon: Smalltalk ui icons repairIcon.
	tabmgrOutput addTab: tab.
	tab := self newTab.
	tab
		label: 'Emissions';
		closeable: false;
		icon: Smalltalk ui icons repairIcon.
	tabmgrOutput addTab: tab