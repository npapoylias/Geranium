specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [ :row | 
						row 
							add: #temperaturePlot left: 0.0 right: 0.66;
							addSplitter; 
							add: #humidityPlot left:0.33 right: 0.33;
							addSplitter;
							add: #exposurePlot left: 0.66 right: 0.0
			]; 						
		yourself