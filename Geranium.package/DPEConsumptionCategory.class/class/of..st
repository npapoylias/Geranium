accessing
of: aNumber

	^ self allSubclasses detect: [ :s | s includes: aNumber ]