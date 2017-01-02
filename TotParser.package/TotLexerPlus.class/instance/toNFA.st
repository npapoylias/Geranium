accessing
toNFA

	|graph|
	graph := super toNFA.
	graph endNode connectTo: graph startNode.
	^ graph
