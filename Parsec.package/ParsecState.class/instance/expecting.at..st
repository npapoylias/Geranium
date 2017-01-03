as yet unclassified
expecting: name at: start
	^ to == start
		and: [ self isIncomplete and: [ (rightHand at: dotPosition + 1) == name ]]
			