converting
toNFA

	|graph start end |
	graph := operand toNFA.
	start := ParsecNFANode new.
	end := ParsecNFANode new.
	start connectTo: graph startNode.
	start connectTo: end.
	graph endNode connectTo: end.
	^ ParsecNFAGraph new startNode: start; endNode: end.