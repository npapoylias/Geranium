*Geranium
asDay

	(self % 10 = 1 and: [ self ~= 11 ]) ifTrue: [ ^ self printString , 'st' ].
	(self % 10 = 2 and: [ self ~= 12 ]) ifTrue: [ ^ self printString , 'nd' ].
	(self % 10 = 3 and: [ self ~= 13 ]) ifTrue: [ ^ self printString , 'rd' ].
	^ self printString , 'st'