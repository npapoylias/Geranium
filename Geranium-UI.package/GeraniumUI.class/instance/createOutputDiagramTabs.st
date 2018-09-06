initialization
createOutputDiagramTabs
	| tab |
	tabmgrOutput := self newTabManager.
	tab := self newTab.
	tab model: outputDiagramsTotStructure.
	tab
		label: 'Energy/Structure';
		closeable: false;
		icon: (self appIcon: #'energy-lamp' size: 28@28).
	tabmgrOutput addTab: tab. 
	tab := self newTab.
	tab model: outputDiagramsSocialMicroClimate.
	tab
		label: 'Social/Climate';
		closeable: false;
		icon: (self appIcon: #'energy-thunder' size: 28@28).
	tabmgrOutput addTab: tab