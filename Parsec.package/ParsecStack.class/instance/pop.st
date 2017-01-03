adding
pop

	| ret |
	ret := self at: currentSize.
	self at: currentSize put: nil.
	currentSize := currentSize - 1.
	^ ret