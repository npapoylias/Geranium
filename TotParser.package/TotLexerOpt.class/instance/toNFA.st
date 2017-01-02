converting
toNFA

	|graph start end |
	graph := operand toNFA.
	start := NFANode new.
	end := NFANode new.
	start connectTo: graph startNode.
	start connectTo: end.
	graph endNode connectTo: end.
	^ NFAGraph new startNode: start; endNode: end.