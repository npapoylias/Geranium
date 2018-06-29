*Geranium-Distributions
connectedPlot: aColor withCaption: aString inView: aView

	| b ds |
	
	"[|x| x:= PMGaussianGenerator new. 
	((1 to: 100) collect: [:i | x next]) 
		connectedPlot: Color red withCaption: 'hallo'] value"
	
	b := RTGrapher new.
	aView ifNotNil: [ b view: aView ].
	b extent: self vizSize.
	ds := RTData new.
		ds noDot.
		ds points: self.
		ds connectColor: aColor.
		b add: ds.
	b
		axisX;
		axisY.
	self size > 1 ifTrue: [
		b addDecorator: RTMeanDevVarDecorator new moveInFront
	].
	self addLabel: aString onGraph: b.
	^ b