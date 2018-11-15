helper
boxedLabel: text colored: boxColor fontColor: aFontColor

	^ (RTBox new 
			height: 3;
			width: 5;
			color: (Color perform: boxColor); 
			borderColor: Color black;
			borderWidth: 5; 
			element) "embed: {(RTLabel new text: text; color: (Color perform: aFontColor); height: 1) element.}
			vertically: 0."
	