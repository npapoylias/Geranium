helper
boxColored: boxColor height: h width: w bWidth: b

	^ (RTBox new 
			height: h;
			width: w;
			color: (boxColor isSymbol ifTrue: [Color perform: boxColor] ifFalse: [boxColor]); 
			borderColor: Color black;
			borderWidth: b; 
			element) "embed: {(RTLabel new text: text; color: (Color perform: aFontColor); height: 1) element.}
			vertically: 0."
	