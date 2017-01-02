instance creation
with: anAtom

	anAtom isString
		ifTrue: [ anAtom size > 1 ifTrue: [ operand := anAtom ] ifFalse: [ operand := anAtom first ] ]	
		ifFalse: [ operand := anAtom ]