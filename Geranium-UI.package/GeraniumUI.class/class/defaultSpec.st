specs
defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		newColumn: [ :c | 
			c 
				newRow: [ :r | r add: #menu  left: 0 right: 0.7; add: #rwnd left: 0.3 right: 0.65; add: #slider left: 0.35 right: 0.05; add: #ff left: 0.95 right: 0.0] height: 64;
				add: #roassal;
				addSplitter;
				add: #input ];
		yourself