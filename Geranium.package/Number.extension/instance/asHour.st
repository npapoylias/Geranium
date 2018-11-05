*Geranium
asHour

	^ self < 10 ifTrue: [ '0' , self printString , 'h' ] ifFalse: [ self printString , 'h' ]