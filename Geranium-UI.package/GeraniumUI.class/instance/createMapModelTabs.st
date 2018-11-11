initialization
createMapModelTabs
	| tab |
	tabmgrMap := self newTabManager.
	
	tab := self newTab.
	tab model: mapDiagram.
	tab
		label: 'Map';
		closeable: false;
		icon: (self appIcon: #'map' size: 28@28).
	tabmgrMap addTab: tab.
	
	tab := self newTab.
	tab model: modelEditor.
	tab
		label: 'Model';
		closeable: false;
		icon:  (self appIcon: #model size: 28@28).
	tabmgrMap addTab: tab.
	
	tab := self newTab.
	tab model: kiviat.
	tab
		label: 'Overview';
		closeable: false;
		icon:  (self appIcon: #overview size: 28@28).
	tabmgrMap addTab: tab.