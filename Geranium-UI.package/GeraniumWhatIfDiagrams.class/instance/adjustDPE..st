initialization
adjustDPE: categories

	|otherCategories difference differencePerCategory newCategories|

	otherCategories := categories select: [ :a | a key ~= DPEA ].
	difference := (categories asDictionary at: DPEA) - dpeAPercentage.
	differencePerCategory := difference / otherCategories size. 
	newCategories := otherCategories collect: [ :a | a key -> (a value + differencePerCategory) ].
	newCategories := newCategories asOrderedCollection addFirst: DPEA -> dpeAPercentage; yourself.
	^ newCategories