initialization
createInputDiagramTabs
	| tab |
	tab := self newTab.
	tabmgrInput := self newTabManager.
	tab := self newTab.
	tab model: inputDiagrams.
	tab
		label: 'Structural';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrInput addTab: tab.
	tab := self newTab.
	tab
		label: 'Social';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrInput addTab: tab.
	tab := self newTab.
	tab
		label: 'Micro-Climate';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrInput addTab: tab.
	"tab := self newTab.
	tab
		label: 'Live-Exploration';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrInput addTab: tab."