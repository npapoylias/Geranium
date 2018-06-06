initialization
createMapModelTabs
	| tab |
	tabmgrMap := self newTabManager.
	tab := self newTab.
	tab model: mapDiagram.
	tab
		label: 'Map';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrMap addTab: tab.
	tab := self newTab.
	tab
		label: 'Model';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrMap addTab: tab.