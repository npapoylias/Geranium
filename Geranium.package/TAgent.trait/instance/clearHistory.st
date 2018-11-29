accessing
clearHistory
	self class ensureProperties.
	^ self class properties removeKey: self ifAbsent: [  ] 
