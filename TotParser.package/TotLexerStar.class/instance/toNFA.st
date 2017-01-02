accessing
toNFA

	|graph start end |
	graph := operand toNFA.
	start := NFANode new.
	end := NFANode new.
	start connectTo: graph startNode.
	start connectTo: end.
	graph endNode connectTo: end.
	graph endNode connectTo: graph startNode.
	^ NFAGraph new startNode: start; endNode: end.