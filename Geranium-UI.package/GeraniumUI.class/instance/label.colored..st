helper
label: text colored: aFontColor

	^ (RTLabel new text: text; color: (Color perform: aFontColor); height: 2) element.
	