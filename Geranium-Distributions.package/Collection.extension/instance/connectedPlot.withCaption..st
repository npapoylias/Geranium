*Geranium-Distributions
connectedPlot: aColor withCaption: aString

	| b ds |
	
	"[|x| x:= PMGaussianGenerator new. 
	((1 to: 100) collect: [:i | x next]) 
		connectedPlot: Color red withCaption: 'hallo'] value"
	
	b := RTGrapher new.
	b extent: 300 @ 200.
	ds := RTData new.
		ds noDot.
		ds points: self.
		ds connectColor: aColor.
		b add: ds.
	b
		axisX;
		axisY.
	self addLabel: aString onGraph: b.
	^ b