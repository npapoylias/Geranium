accessing
collect: aBlock

	|newCollection|
	newCollection := self class new.
	self do: [ :item | newCollection add: (aBlock value: item) ].
	^ newCollection