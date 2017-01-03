initialization
init

	self at: #e put: (ParsecEmptyRule new grammar: self).
	self at: #Eof put: (ParsecEof new grammar: self).
	self at: #ignore put: ((ParsecTerminalRule new grammar: self) , '[ \t\n\r]*'). "can be overriden"