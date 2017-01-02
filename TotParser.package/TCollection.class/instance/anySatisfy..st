accessing
anySatisfy: aBlock

	1 to: currentSize do: [:i | (aBlock value: (self at: i)) ifTrue: [ ^ true ] ].
	^ false