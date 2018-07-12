initialization
createOutputDiagramTabs
	| tab |
	tabmgrOutput := self newTabManager.
	tab := self newTab.
	tab model: outputDiagramsTotStructure.
	tab
		label: 'Consumption/Structure';
		closeable: false;
		icon: Smalltalk ui icons repairIcon.
	tabmgrOutput addTab: tab. 
	tab := self newTab.
	tab model: outputDiagramsSocialMicroClimate.
	tab
		label: 'Social/Micro-Climate';
		closeable: false;
		icon: Smalltalk ui icons repairIcon.
	tabmgrOutput addTab: tab