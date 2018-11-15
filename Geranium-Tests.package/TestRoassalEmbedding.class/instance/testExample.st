tests
testExample

	| e v |
	e := (RTBox new 
	size: 40; 
	color: Color brown; 
	borderColor: Color black;
	borderWidth: 5; 
	element) embed: {(RTText "RTLabel" new text: 'hallo'; color: Color black; height: 20) element.}
	vertically: 0.
	
v := RTView new.
v addAll: e allElements.
v