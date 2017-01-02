accessing
toNFA

	| last subGraph ret|
	ret := NFAGraph new.
	ret startNode: NFANode new.
	ret endNode: NFANode new.
	1 to: self options size do: [:i |
		subGraph := (self options at: i) toNFA.
		ret startNode connectTo: subGraph startNode. 
		subGraph endNode connectTo: ret endNode.
	].
	^ ret