accessing
asNFAGraph
	|ret endNode|
	ret := self toNFA.
	endNode := NFANode new.
	ret endNode connectTo: endNode.
	ret endNode: endNode.
	^ ret "ensure ending node"