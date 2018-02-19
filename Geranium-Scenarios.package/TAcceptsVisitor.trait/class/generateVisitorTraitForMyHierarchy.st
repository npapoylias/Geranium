as yet unclassified
generateVisitorTraitForMyHierarchy

	| t n |
	t := Trait named: (n := 'T', self name , 'HierarchyVisitor') asSymbol
		uses: {}
		category: self category.
	
	t compile: 'visitNode: aNode ^ aNode acceptVisitor: self'.	
	t compile: ('visit' , self name , ': a' , self name).
	self allSubclasses do: [ :c | t compile: ('visit' , c name , ': a' , c name) ]. 
	Smalltalk globals at: n put: t.
	^ t