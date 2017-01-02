initialization
init

	self at: #e put: (TEmptyRule new grammar: self).
	self at: #Eof put: (TEof new grammar: self).
	self at: #ignore put: ((TTerminalRule new grammar: self) , '[ \t\n\r]*'). "can be overriden"