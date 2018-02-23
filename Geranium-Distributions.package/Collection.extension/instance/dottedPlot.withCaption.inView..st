*Geranium-Distributions
dottedPlot: aColor withCaption: aString inView: aView
	
	"[|x| x:= PMGaussianGenerator new. 
	((1 to: 100) collect: [:i | x next]) 
		dottedPlot: Color red withCaption: 'hallo'] value"
	
	| b ds |
	b := RTGrapher new.
	aView ifNotNil: [ b view: aView ].
	"We defien the size of the charting area"
	b extent: self vizSize.
	
	ds := RTData new.
	"When the mouse is above a bar, say which class we are point at"
	ds interaction popup.
	ds points: self.
	ds dotShape rectangle color: aColor.
	b add: ds.	
	self addLabel: aString onGraph: b.
	^ b 
	