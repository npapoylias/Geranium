accessing
toNFA

	| op |
	op := ParsecNFANodeAny new. 
	^ ParsecNFAGraph new startNode: op startNode; endNode: op endNode.
	