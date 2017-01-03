accessing
detect: aBlock

	1 to: currentSize do: [:i | (aBlock value: (self at: i)) ifTrue: [ ^ (self at: i) ] ].
	NotFound signalFor: aBlock