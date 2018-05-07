initialization
initializeWidgets
	menu := MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Rewind';
						icon: (self appIcon: #rewind);
						action: [ ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Play';
						icon: (self appIcon: #play);
						action: [  ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Pause';
						icon: (self appIcon: #pause);
						action: [ ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Stop';
						icon: (self appIcon: #stop);
						action: [ ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Fast-Fwd';
						icon: (self appIcon: #'fast-forward');
						action: [ ] ]].
	menu applyTo: self.
	slider := self instantiate: SliderModel.
	slider
		color: Color green;
		min: 0;
		max: 100;
		whenValueChangedDo: [ :value | slider label: value asString ].
	roassal := self instantiate: RoassalModel.	
	"This is the code for the Roassal view.
	The block takes both a view and a canvas."
	roassal script: [ :view :canvas | GeraniumUIOsmView new renderInView: view; geraniumAreaMapExample ].
	input := self instantiate: RoassalModel.
	input script: [:v :c | (GeraniumReportVisualization new with: self report; inView: v) setCanvas: c].
