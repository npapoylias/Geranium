initialization
adjustDPE: categories

	|otherCategories difference differencePerCategory newCategories|

	otherCategories := categories select: [ :a | a key ~= DPEB and: [ a key ~= DPEA ] ].
	otherCategories ifEmpty: [ otherCategories := { DPEC -> 0.0 .DPED -> 0.0 } ].
	difference := (categories asDictionary at: DPEB ifAbsentPut: [0.0]) - dpeBPercentage.
	differencePerCategory := difference / otherCategories size. 
	newCategories := (otherCategories sort: [:a :b | a value < b value]) collectWithIndex: [ :a :index |  
		a value + differencePerCategory < 0
			ifTrue: [ 
				difference := difference + a value. 
				otherCategories size - index = 0
					ifTrue: [ a key -> 0 ]
					ifFalse: [ 
						differencePerCategory := difference / (otherCategories size - index).
						a key -> 0
					] 
			] ifFalse: [ 
				a key -> (a value + differencePerCategory)
			] 
	].
	newCategories := newCategories asOrderedCollection addFirst: DPEB -> dpeBPercentage; addFirst: DPEA -> dpeAPercentage; yourself.
	^ newCategories