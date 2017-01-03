accessing
toNFA

	| last subGraph ret|
	ret := ParsecNFAGraph new.
	ret startNode: ParsecNFANode new.
	ret endNode: ParsecNFANode new.
	1 to: self options size do: [:i |
		subGraph := (self options at: i) toNFA.
		ret startNode connectTo: subGraph startNode. 
		subGraph endNode connectTo: ret endNode.
	].
	^ ret