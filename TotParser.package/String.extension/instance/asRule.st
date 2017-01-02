*TotParser
asRule

	^ (TTerminalRule new name: ('t' , self hash asString) asSymbol) , self