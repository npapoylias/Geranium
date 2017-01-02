accessing
toNFA

	| op |
	op := NFANodeAny new. 
	^ NFAGraph new startNode: op startNode; endNode: op endNode.
	