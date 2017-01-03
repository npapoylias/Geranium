accessing
string

	^ string --> ('"' , ('\\[\\/"bfnrt]' || '\\u[0-9a-fA-F]{4}' || '[^\\"]') lstar , '"') 