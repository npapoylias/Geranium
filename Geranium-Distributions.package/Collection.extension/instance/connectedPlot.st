*Geranium-Distributions
connectedPlot

	| b ds |
	
	b := RTGrapher new.
	b extent: 300 @ 200.
	ds := RTData new.
		ds noDot.
		ds points: self.
		ds connectColor: Color red.
		b add: ds.
	b
		axisX;
		axisY.
	b build.
	^ b view.