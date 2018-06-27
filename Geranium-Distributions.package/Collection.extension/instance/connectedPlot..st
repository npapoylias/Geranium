*Geranium-Distributions
connectedPlot: aColor

	| b ds |
	
	"[|x| x:= PMGaussianGenerator new. 
	((1 to: 100) collect: [:i | x next]) 
		connectedPlot: Color red] value"
	
	b := RTGrapher new.
	b extent: self vizSize.
	ds := RTData new.
		ds noDot.
		ds points: self.
		ds connectColor: aColor.
		b add: ds.
	b
		axisX;
		axisY.
	b addDecorator: RTMeanDevVarDecorator new moveInFront.
	^ b.