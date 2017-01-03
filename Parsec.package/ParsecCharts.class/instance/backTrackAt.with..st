as yet unclassified
backTrackAt: indexPair with: aNewState

	"should update currentDo: also"
	
	logging ifTrue: [
		Transcript
			show: 'BT: [Chart' , chartIndex asString , '(' , stateIndex asString , ')' ,  ']';  
			show: '======================'; cr.
	].
	chartIndex := indexPair key.
	stateIndex := indexPair value - 1. "replay"
	chartIndex + 1 to: self size do: [:i | self removeIndex: i  ]. "remove"
	stateIndex + 2 to: self current size do: [ :i | self current removeIndex: i ].
	(self at: chartIndex) at: stateIndex + 1 put: aNewState.