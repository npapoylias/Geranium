accessing
toNFA

	"unroll -- seem like 0 to 5 will not work"

	| last subGraph ret patchExits repetitionLast |
	ret := ParsecNFAGraph new.
	last := operand toNFA.
	patchExits := OrderedCollection new.
	ret startNode: last startNode.
	2 to: between value do: [:i |
		subGraph := operand toNFA.
		last endNode connectTo: subGraph startNode. last := subGraph.
		i >= between key ifTrue: [ patchExits add: subGraph ]. 
		"2 to 5 , then 2, 3, 4 go directly to then end"
	].
	repetitionLast := ParsecNFANode new.
	patchExits do: [ :graph | graph endNode connectTo: repetitionLast ].
	^ ret endNode: repetitionLast.