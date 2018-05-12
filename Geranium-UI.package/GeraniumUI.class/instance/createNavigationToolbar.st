initialization
createNavigationToolbar

	rwnd := self newButton aboutText: 'Rewind'; icon: (self appIcon: #rewind); 
		action: [ step > min ifTrue: [ self gotoStep: step - 1 ] ].
	ff := self newButton aboutText: 'Fast-Fwd'; icon: (self appIcon: #'fast-forward');
		action: [ step < max ifTrue: [ self doStep ] ].
	play := self newButton aboutText: 'Play'; icon: (self appIcon: #play);
		action: [ 
			pausedOrStopped
				ifTrue: [ pausedOrStopped := false.
					self resumeTemperatureAnimation.
					[ [ pausedOrStopped or: [ step = max ] ]
						whileFalse: [ self doStep. (Delay forMilliseconds: 500) wait ] ] fork ] 
	].
	pause := self newButton aboutText: 'Pause'; icon: (self appIcon: #pause);
		action: [ pausedOrStopped := true. self pauseTemperatureAnimation ].
	stop := self newButton aboutText: 'Stop'; icon: (self appIcon: #stop);
		action: [ pausedOrStopped := true. self pauseTemperatureAnimation. self gotoStep: 0].
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
