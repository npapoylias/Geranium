as yet unclassified
on: aRule alternative: index from: start to: finish dot: aDotPosition

	rule := aRule.
	from := start.
	to := finish.
	dotPosition := aDotPosition.
	rightHandIndex := index.
	rightHand := rule at: rightHandIndex.
	rule isTerminal ifFalse: [dRefRightHand := rule directRefsAt: rightHandIndex].
	rightHandSize := rightHand size.