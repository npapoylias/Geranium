converting
toNFA

	| last subGraph ret|
	ret := ParsecNFAGraph new.
	last := (self sequence at: 1) toNFA.
	ret startNode: last startNode.
	2 to: self sequence size do: [:i |
		subGraph := (self sequence at: i) toNFA.
		last endNode connectTo: subGraph startNode. last := subGraph
	].
	^ ret endNode: last endNode