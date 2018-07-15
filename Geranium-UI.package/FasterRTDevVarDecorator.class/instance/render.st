rendering
render
	| dev svg k index offset ws|
	dev := points collectWithIndex: [ :p :i | p + (deviation*i). ].
	ws := WriteStream on: String new.
	svg := TRSVGPath new.
	svg color: color.
	offset := -0.15.
	k := builder getPixelPositionOf: (1+offset)@dev first.
	"str := 'M', k x asString,' ', k y asString."
	ws 
		nextPut: $M;
		nextPutAll: k x asString;
		nextPut: Character space;
		nextPutAll: k y asString.
	2 to: dev size do: [ :i| | p |
		p := dev at: i.
		k := builder getPixelPositionOf: (i+offset)@p.
		"str := str, 'L', k x asString,' ', k y asString."
		ws 
			nextPut: $L;
			nextPutAll: k x asString;
			nextPutAll: k y asString.
		].
	dev := (points collectWithIndex:[:p :i | p - (deviation*i)] ).
	1 to: dev size do: [ :i | | p |
		index := dev size - i +1.
		p := dev at: index.
		k := builder getPixelPositionOf: (index+offset)@p.
		"str := str, 'L', k x asString,' ', k y asString. "
		ws 
			nextPut: $L;
			nextPutAll: k x asString;
			nextPutAll: k y asString.
	].
	
	"str := str, 'Z'."
	ws nextPut: $Z.
	svg path: ws contents."str."
	builder view canvas addShape: svg.
	