example
example

	^ TotGraph new 
	with: { 
		'a' -> '1' -> 'b' .  
		'b' -> '2' -> 'c' .
		'c' -> '3' -> 'a' .
		'b' -> '4' -> 'd' .
		'd' -> '5' -> 'c'
	};
	view