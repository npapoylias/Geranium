adding
add: anItem

	currentSize := currentSize + 1.
	currentSize > totalSize
		ifTrue: [ self grow ].
	^ array at: currentSize put: anItem