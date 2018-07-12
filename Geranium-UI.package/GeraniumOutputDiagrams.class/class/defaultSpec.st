specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
			newColumn: [ :row | 
						row
							add: #totalsPlot top: 0.0 bottom: 0.50;
							addSplitter;
							add: #buildingTypePlot top:0.50 bottom: 0.0";
							addSplitter;
							add: #ownAwarenessPlot top: 0.50 bottom: 0.25;
							addSplitter;
							add: #climatePlot top: 0.75 bottom: 0.0"
			]; 						
		yourself