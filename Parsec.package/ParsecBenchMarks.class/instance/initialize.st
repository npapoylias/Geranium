initialization
initialize

	super initialize.
	ppJsonParser := PPJsonGrammar new.
	ppJsonMemoParser := PPJsonGrammar new memoized transform: [ :each | each memoized ].
	ppcJsonParser := PP2JsonGrammar new.
	ppcJsonMemoParser := PP2JsonGrammar new memoize transform: [ :each | each memoize ].
	totJsonParser := ParsecJsonParser new.