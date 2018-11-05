*Geranium
asHour

	^ self < 10 ifTrue: [ '0' , self printString , ':00h' ] ifFalse: [ self printString , ':00h' ]