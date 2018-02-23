*Geranium-Distributions
kiviatForParameters: parameterList withCaption: aString inView: aView

	| b deco lb|
	
	"{ #a -> (1 to: 3 ). #b -> (3 to: 6) . #c -> (6 to: 9 ). #d -> (9 to: 12) }
		kiviatForParameters: { #x . #y . #z .}
		withCaption: 'x y z kiviat'"

	b := RTKiviatBuilder new.
	"b extent: self vizSize."
	aView ifNotNil: [ b view: aView ].
	b objects: self.
	b shape circle
		color: [ :f | self colorFor: f kiviatNode named];
	size: 10.
1 to: parameterList size do: [: i | b addMetric: [ :o | o value at: i ] title: (parameterList at: i) asString ].
b activateAxisTitle.
b activatePolygons.
aString ifNotNil: [  
	lb := RTLegendBuilder new.
	lb view: b view.
	lb right.
	lb addText: aString.
	self do: [ :f | lb addColor: (self colorFor: f key) text: f key].
	lb build.
].
^ b 