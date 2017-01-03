tests
testAnySatisfy
	|t|
	t := self classToTest new.
	ProtoObject allSubclasses do: [:c | t add: c. ].
	self assert: (t anySatisfy: [ :c | c == Object ]).
	self assert: (t anySatisfy: [ :c | c == self classToTest ]).
	self deny: (t anySatisfy: [ :c | c == ProtoObject ]).