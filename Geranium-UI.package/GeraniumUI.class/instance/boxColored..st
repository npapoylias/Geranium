helper
boxColored: boxColor

	^ (RTBox new 
			height: 3;
			width: 17;
			color: (boxColor isSymbol ifTrue: [Color perform: boxColor] ifFalse: [boxColor]); 
			borderColor: Color black;
			borderWidth: 5; 
			element) "embed: {(RTLabel new text: text; color: (Color perform: aFontColor); height: 1) element.}
			vertically: 0."
	