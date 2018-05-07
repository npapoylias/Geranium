specs
defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		newColumn: [ :c | 
			c 
				newRow: [ :r | r add: #menu; add: #slider] height: 64;
				add: #roassal;
				addSplitter;
				add: #input ];
		yourself