accessing
toNFA

	|graph start end |
	graph := operand toNFA.
	start := ParsecNFANode new.
	end := ParsecNFANode new.
	start connectTo: graph startNode.
	start connectTo: end.
	graph endNode connectTo: end.
	graph endNode connectTo: graph startNode.
	^ ParsecNFAGraph new startNode: start; endNode: end.