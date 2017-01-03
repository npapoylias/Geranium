instance creation
matchesStreamPrefix: s

	|index initPosition endPos c row|
	index := 1.
	initPosition := s position.
	row := array at: index. 
	[ 
		(row at: 257) ifTrue: [ endPos := s position ]. "next may proceed without succeeding"
		(c := s next) 
			ifNil: [ false ] 
			ifNotNil: [(index := row at: c asciiValue + 1) isNotNil]  
	] whileTrue: [ row := array at: index].
	
	^ endPos 
		ifNil: [ s position: initPosition. false] "maybe in a end state"
		ifNotNil: [ s position: endPos. true ]

	