*Parsec
toNFA

	|lastNode firstNode|

	self do: [ :c |  
		lastNode 
			ifNil: [ firstNode := lastNode := c toNFA ]
			ifNotNil: [ |newNode| lastNode connectTo: (newNode := c toNFA). lastNode := newNode ]	
	].

	^ ParsecNFAGraph new startNode: firstNode; endNode: lastNode