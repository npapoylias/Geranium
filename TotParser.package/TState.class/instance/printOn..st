as yet unclassified
printOn: aStream

	aStream nextPutAll: rule name; nextPutAll: ' --> '.
	
	rightHand doWithIndex: [:item :index |
		dotPosition + 1 = index ifTrue: [ aStream nextPutAll: ' . ' ].
		aStream nextPutAll: item asString; nextPutAll: ' '.
	].

	aStream nextPutAll: ' [ '; nextPutAll: (from->to) asString; nextPutAll: ' ] '.	
	aStream nextPutAll: ' [ '; nextPutAll: (fromTerminal->toTerminal) asString; nextPutAll: ' ] '.	
