accessing
toNFA

	| op |
	op := NFARangeNode new with: operand. 
	^ NFAGraph new startNode: op startNode; endNode: op endNode.
