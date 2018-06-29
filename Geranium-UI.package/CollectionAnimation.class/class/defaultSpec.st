specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [ :row | 
						row 
							add: #plot left: 0.0 right: 0.0
			]; 						
		yourself