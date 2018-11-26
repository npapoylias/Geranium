helper
label: text colored: aFontColor height: h

	^ (RTLabel new text: text; color: (Color perform: aFontColor); height: h) element.
	