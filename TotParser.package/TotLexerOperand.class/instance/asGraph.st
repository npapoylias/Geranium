converting
asGraph

	^ {self hash -> 'op' -> (operand asString , ' (' , self hash asString , ')') "unique"} asOrderedCollection