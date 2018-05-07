specs
defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		newColumn: [ :c | 
			c 
				add: #menu height: 64; newRow: [ :r | r add: #slider ];
				add: #roassal;
				addSplitter;
				add: #input ];
		yourself