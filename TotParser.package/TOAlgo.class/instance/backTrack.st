accessing
backTrack
	| btState |
	(backTrackStack isNotEmpty and: [ self atChartAndStateEnd ])
		ifFalse: [ ^ self ].
	btState := backTrackStack pop.
	readingPosition := btState readingPosition.
	charts
		backTrackAt: btState chartIndex -> btState stateIndex
		with: btState state