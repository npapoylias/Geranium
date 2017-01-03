removing
removeStackAlternativesOf: aRule startingAt: from
	
	"optimize -- normally this should remove one or more at the top -- or can be a dict of stacks"
	|btState|
	[
		backTrackStack isEmpty 
			ifTrue: [ false ]
			ifFalse: [  
				btState := backTrackStack top.
				btState state rule == aRule and: [ btState state from == from]
			]
	] whileTrue: [ backTrackStack pop ].
	"(backTrackStack 
		select: [:btState | btState state rule = aRule and: [ btState state from = from ]  ])
		do: [ :btState | backTrackStack remove: btState ifAbsent: [  ] ]"
