specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
			newColumn: [ :row | 
						row
							add: #totalsPlot top: 0.0 bottom: 0.50;
							addSplitter;
							add: #buildingTypePlot top:0.50 bottom: 1.0
			]; 						
		yourself