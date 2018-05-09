initialization
initializeWidgets
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
	mapDiagram := self instantiate: RoassalModel.	
	mapDiagram script: [ :view :canvas | GeraniumUIOsmView new renderInView: view; geraniumAreaMapExample ].
	inputDiagrams := self instantiate: RoassalModel.
	inputDiagrams script: [:v :c | (GeraniumReportVisualization new with: self report; inView: v) setCanvas: c].
