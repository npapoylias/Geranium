initialization
matchesStreamPrefix: s

	"unroll collect and anySatisfy here, after testing"

	|cList nList endPos initPosition possibleZeroMatch |
	possibleZeroMatch := false.
	endPos := initPosition := s position.
	cList := nList := (self isAuto ifFalse: [{self}] ifTrue: [self followEpsilons])  asSet. "follow epsilons in the initial state"
	[ nList isEmpty or: [s atEnd ] ] whileFalse: [ |c|
		c := s peek.
		cList := nList. 
		nList := (cList collect: [ :n | 
			n isEnd ifTrue: [ possibleZeroMatch := true. endPos := s position ]. "mark ends"
			n lexMatch: c.
		]) deepFlatten.
		nList isEmpty ifFalse: [ s next ]
	].
	nList do: [ :n | n isEnd ifTrue: [ possibleZeroMatch := true. endPos := s position] ]. "last iteration"
	s position: endPos.
	^ endPos ~= initPosition or: [ possibleZeroMatch ] 