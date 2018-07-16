specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [ :row | 
						row 
							newColumn: [ :col | 
							 	col add: #pie  top: 0.0 bottom: 0.05;
									 add: #dpeASlider top: 0.95 bottom: 0.0
							] left: 0.0 right: 0.66;
							addSplitter; 
							newColumn: [:col |
								col add: #barStack top: 0.0 bottom: 0.05;
									add: #awarenessSlider top: 0.95 bottom: 0.0
							] left:0.33 right: 0.33;
							addSplitter;
							newColumn: [:col | 
								col add: #scatterplot top: 0.0 bottom: 0.05;
								add: #temperatureSlider top: 0.95 bottom: 0.0
							] left: 0.66 right: 0.0
			]; 						
		yourself