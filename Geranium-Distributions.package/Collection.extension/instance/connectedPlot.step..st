*Geranium-Distributions
connectedPlot: aColor step: aStep

	| b ds |
	
	"[|x| x:= PMGaussianGenerator new. 
	((1 to: 100) collect: [:i | x next]) 
		connectedPlot: Color red] value"
	
	b := RTGrapher new.
	b extent: self vizSize.
	ds := RTData new.
		ds noDot.
		ds points: ((1 to: self size by: aStep) collect: [:i | self at: i]).
		ds connectColor: aColor.
		b add: ds.
	b
		axisX;
		axisY.
	b addDecorator: RTMeanDevVarDecorator new moveInFront.
	^ b.