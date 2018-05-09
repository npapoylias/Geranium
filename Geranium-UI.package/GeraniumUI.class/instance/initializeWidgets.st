initialization
initializeWidgets
	| tab  |
	rwnd := self newButton
						aboutText: 'Rewind';
						icon: (self appIcon: #rewind);
						action: [step > min ifTrue: 
							[self stepChanged: step - 1. slider widget updateValue]].		
	ff := self newButton
						aboutText: 'Fast-Fwd';
						icon: (self appIcon: #'fast-forward');
						action: [step < max 
							ifTrue: [self stepChanged: step + 1. slider widget updateValue]].
	play := self newButton
						aboutText: 'Play';
						icon: (self appIcon: #play);
						action: [].
	pause := self newButton
						aboutText: 'Pause';
						icon: (self appIcon: #pause);
						action: [].
	stop := self newButton
						aboutText: 'Stop';
						icon: (self appIcon: #stop);
						action: [self stepChanged: 0. slider widget updateValue].
	slider := (GeraniumSlider new
		model: self;
		quantum: 1;
		fontColor: Color white;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		min: (step := min := 0);
		max: (max := 100);
		label: min asString , '/' , max asString;
		setValueSelector: #stepChanged:;
		getValueSelector: #step;
		extent: 24@24) asSpecAdapter. 
	mapDiagram := RoassalModel new.	
	mapDiagram script: [ :view :canvas | GeraniumUIOsmView new renderInView: view; geraniumAreaMapExample ].
	inputDiagrams := RoassalModel new. 
	inputDiagrams script: [:v :c | (GeraniumReportVisualization new with: self report; inHorizontalExampleView: v) setCanvas: c].
	outputDiagrams := RoassalModel new.
	outputDiagrams script: [:v :c | (GeraniumReportVisualization new with: self report; inVerticalExampleView: v) setCanvas: c].
	
	tabmgrMap := self newTabManager.
	tab := self newTab.
	tab model: mapDiagram.
	tab label: 'Map'; closeable: false; 
		icon: Smalltalk ui icons thumbsUpIcon. 
	tabmgrMap addTab: tab.
	tab := self newTab.
	"tab model: inputDiagrams."
	tab label: 'Model'; closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon. 
	tabmgrMap addTab: tab.
	tab := self newTab.
	"tab model: inputDiagrams."
	
	tabmgrInput := self newTabManager.
	tab := self newTab.
	tab model: inputDiagrams.
	tab label: 'Structural'; closeable: false; 
		icon: Smalltalk ui icons thumbsUpIcon. 
	tabmgrInput addTab: tab.
	tab := self newTab.
	"tab model: inputDiagrams."
	tab label: 'Social'; closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon. 
	tabmgrInput addTab: tab.
	tab := self newTab.
	"tab model: inputDiagrams."
	tab label: 'Micro-Climate'; closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon. 
	tabmgrInput addTab: tab.
	
	
	tabmgrOutput := self newTabManager.
	tab := self newTab.
	tab model: outputDiagrams.
	tab label: 'Electricity'; closeable: false; 
		icon: Smalltalk ui icons repairIcon. 
	tabmgrOutput addTab: tab.
	tab := self newTab.
	"tab model: outputDiagrams."
	tab label: 'Gas'; closeable: false; 
		icon: Smalltalk ui icons repairIcon. 
	tabmgrOutput addTab: tab.

