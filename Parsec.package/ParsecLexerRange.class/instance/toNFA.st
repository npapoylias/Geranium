accessing
toNFA

	| op |
	op := ParsecNFARangeNode new with: operand. 
	^ ParsecNFAGraph new startNode: op startNode; endNode: op endNode.
