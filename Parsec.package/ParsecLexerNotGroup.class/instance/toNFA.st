accessing
toNFA

	| graph new|
	graph := super toNFA. 
	new := ParsecNFANodeNot new.
	graph startNode out do: [:n | new of: n ].
	graph startNode: new.
	^ graph