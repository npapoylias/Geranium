*TotParser
matchPeek: subCollection 
	
	|currentPosition|
	currentPosition := self position.
	1 to: subCollection size do: [:i | (subCollection at: i) == self next ifFalse: [ self position: currentPosition. ^ false ]  ].
	^ true
	