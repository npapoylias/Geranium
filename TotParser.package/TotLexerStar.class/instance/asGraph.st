converting
asGraph

	^ operand asGraph add: (self hash -> '*' -> operand hash); yourself