specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [ :row | 
						row 
							add: #scatterplot left: 0.0 right: 0.66;
							addSplitter; 
							add: #barStack left:0.33 right: 0.33;
							addSplitter;
							add: #pie left: 0.66 right: 0.0
			]; 						
		yourself