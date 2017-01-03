accessing
nextEmptyAdd: aState
	self atEnd
		ifFalse: [ ^ self ].
	self augment.
	self next add: aState