*Geranium-Distributions
kiviatForParameters: parameterList withCaption: aString inView: aView colorPalet: colors

	| b deco lb i colorDict |
	
	"{ #a -> (1 to: 3 ). #b -> (3 to: 6) . #c -> (6 to: 9 ). #d -> (9 to: 12) }
		kiviatForParameters: { #x . #y . #z .}
		withCaption: 'x y z kiviat'"
	i := 0.
	colorDict := Dictionary new. 
	b := RTKiviatBuilder new.
	"b extent: self vizSize."
	aView ifNotNil: [ b view: aView ].
	b objects: self.
	b shape circle
		color: [ :f | colorDict at: f kiviatNode named ifAbsentPut: [i := i + 1. colors at: i]];
	size: 10.
1 to: parameterList size do: [: ind | b addMetric: [ :o | o value at: ind ] title: (parameterList at: ind) asString ].
b activateAxisTitle.
b activatePolygons.
aString ifNotNil: [  
	lb := RTLegendBuilder new.
	lb view: b view.
	lb right.
	lb addText: aString.
	self do: [ :f | lb addColor: (colorDict at: f key ifAbsentPut: [i := i + 1. colors at: i]) text: f key].
	lb build.
].
^ b 