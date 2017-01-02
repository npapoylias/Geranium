*TotParser
toNFA

	|lastNode firstNode|

	self do: [ :c |  
		lastNode 
			ifNil: [ firstNode := lastNode := c toNFA ]
			ifNotNil: [ |newNode| lastNode connectTo: (newNode := c toNFA). lastNode := newNode ]	
	].

	^ NFAGraph new startNode: firstNode; endNode: lastNode