initialization
initializeWidgets
	| tab |
	pausedOrStopped := true.
	rwnd := self newButton
		aboutText: 'Rewind';
		icon: (self appIcon: #rewind);
		action: [ step > min
				ifTrue: [ self gotoStep: step - 1 ] ].
	ff := self newButton
		aboutText: 'Fast-Fwd';
		icon: (self appIcon: #'fast-forward');
		action: [ step < max
				ifTrue: [ self doStep ] ].
	play := self newButton
		aboutText: 'Play';
		icon: (self appIcon: #play);
		action: [ pausedOrStopped
				ifTrue: [ pausedOrStopped := false.
					self resumeTemperatureAnimation.
					[ [ pausedOrStopped or: [ step = max ] ]
						whileFalse: [ self doStep. (Delay forMilliseconds: 500) wait ] ] fork ] ].
	pause := self newButton
		aboutText: 'Pause';
		icon: (self appIcon: #pause);
		action: [ pausedOrStopped := true.
			self pauseTemperatureAnimation ].
	stop := self newButton
		aboutText: 'Stop';
		icon: (self appIcon: #stop);
		action: [ pausedOrStopped := true.
			self pauseTemperatureAnimation.
			self gotoStep: 0.
		].
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
		extent: 24 @ 24) asSpecAdapter.
	mapDiagram := RoassalModel new.
	mapDiagram
		script: [ :view :canvas | 
			mapView := GeraniumUIOsmView new.
			mapView
				renderInView: view;
				geraniumAreaMapExample.
			self boundingBox: mapView boundingBox.
			self renderTemperatureDecoration ].
	inputDiagrams := RoassalModel new.
	inputDiagrams
		script: [ :v :c | 
			(GeraniumReportVisualization new
				with: self report;
				inHorizontalExampleView: v) setCanvas: c ].
	outputDiagrams := RoassalModel new.
	outputDiagrams
		script: [ :v :c | 
			(GeraniumReportVisualization new
				with: self report;
				inVerticalExampleView: v) setCanvas: c ].
	tabmgrMap := self newTabManager.
	tab := self newTab.
	tab model: mapDiagram.
	tab
		label: 'Map';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrMap addTab: tab.
	tab := self newTab.
	"tab model: inputDiagrams."
	tab
		label: 'Model';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrMap addTab: tab.
	tab := self newTab.
	"tab model: inputDiagrams."
	tabmgrInput := self newTabManager.
	tab := self newTab.
	tab model: inputDiagrams.
	tab
		label: 'Structural';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrInput addTab: tab.
	tab := self newTab.
	"tab model: inputDiagrams."
	tab
		label: 'Social';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrInput addTab: tab.
	tab := self newTab.
	"tab model: inputDiagrams."
	tab
		label: 'Micro-Climate';
		closeable: false;
		icon: Smalltalk ui icons thumbsUpIcon.
	tabmgrInput addTab: tab.
	tabmgrOutput := self newTabManager.
	tab := self newTab.
	tab model: outputDiagrams.
	tab
		label: 'Electricity';
		closeable: false;
		icon: Smalltalk ui icons repairIcon.
	tabmgrOutput addTab: tab.
	tab := self newTab.
	"tab model: outputDiagrams."
	tab
		label: 'Gas';
		closeable: false;
		icon: Smalltalk ui icons repairIcon.
	tabmgrOutput addTab: tab