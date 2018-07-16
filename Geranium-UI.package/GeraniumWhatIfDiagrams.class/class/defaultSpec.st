specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [ :row | 
						row 
							newColumn: [ :col | 
							 	col add: #dpeASlider top: 0.0 bottom: 0.95;
									add: #pie  top: 0.05 bottom: 0.00 
							] left: 0.01 right: 0.66;
							addSplitter; 
							newColumn: [:col |
								col add: #awarenessSlider top: 0.0 bottom: 0.95;
								add: #barStack top: 0.05 bottom: 0.0	
							] left:0.33 right: 0.33;
							addSplitter;
							newColumn: [:col | 
								col add: #temperatureSlider top: 0.0 bottom: 0.95;
								add: #scatterplot top: 0.05 bottom: 0.00
							] left: 0.66 right: 0.01
			] top: 0.0 bottom: 0.05; 
		newRow: [ :row | row add: #applyButton ] top: 0.95 bottom: 0.0						
		yourself