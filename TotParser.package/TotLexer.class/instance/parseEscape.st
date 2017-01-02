parsing
parseEscape

	|escape|
	stream next.
	escape := stream next.
	^ TotLexerEscape new with: 
		([self escapeChars at: escape] on: NotFound do: [escape])