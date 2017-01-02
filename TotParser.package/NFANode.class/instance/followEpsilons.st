initialization
followEpsilons

	^ outWithoutEpsilons ifNil: [outWithoutEpsilons := (out collect: [ :n | 
			n isAuto 
				ifTrue: [n followEpsilons] "follow epsilons"
				ifFalse: [ n ]
		]) deepFlatten]
								