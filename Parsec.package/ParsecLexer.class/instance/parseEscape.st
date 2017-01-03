parsing
parseEscape

	|escape|
	stream next.
	escape := stream next.
	^ ParsecLexerEscape new with: 
		([self escapeChars at: escape] on: NotFound do: [escape])