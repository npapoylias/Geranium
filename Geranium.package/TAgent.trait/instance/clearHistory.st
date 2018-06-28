accessing
clearHistory

	^ self class properties removeKey: self ifAbsent: [  ] 
