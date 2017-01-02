accessing
asNFA
	|ret endNode|
	ret := self toNFA.
	endNode := NFANode new.
	ret endNode connectTo: endNode.
	ret endNode: endNode.
	^ ret startNode"ensure ending node"