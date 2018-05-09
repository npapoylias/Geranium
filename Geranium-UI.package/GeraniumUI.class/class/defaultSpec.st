specs
defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		newRow: [ :row | 
			row newColumn: [ :c | 
				c 
					newRow: [ :r | r 
						add: #play left: 0 right: 0.95; 
						add: #pause left: 0.05 right: 0.90; 
						add: #stop  left: 0.10 right: 0.85; 
						add: #rwnd left: 0.15 right: 0.80; 
						add: #slider left: 0.20 right: 0.05; 
						add: #ff left: 0.95 right: 0.0] top: 0 bottom: 0.94;
						add: #mapDiagram top: 0.06 bottom: 0.3;
						addSplitter;
						add: #inputDiagrams top: 0.7 bottom: 0 
			] left: 0 right: 0.35;
			addSplitter;
			add: #outputDiagrams left: 0.65 right: 0.
		]; 						
		yourself
