initialization
check: aChar

	nfaNodes do: [ :n | (n check: aChar) ifTrue: [^ false]].
	^ true 