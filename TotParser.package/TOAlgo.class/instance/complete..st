as yet unclassified
complete: aState

	"aState is complete delete stack alternatives otherwise this is a full backtrack"
	self removeStackAlternativesOf: aState rule startingAt: aState from.
	super complete: aState.