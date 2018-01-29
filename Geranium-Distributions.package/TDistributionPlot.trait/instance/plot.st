instance creation
plot

	| b ds |
	
	b := RTGrapher new.
	b extent: 300 @ 200.
	ds := RTData new.
		ds noDot.
		ds points: ((1 to: 1000) collect: [:i | self numericalNext]).
		ds connectColor: Color red.
		b add: ds.
	b
		axisX;
		axisY.
	b build.
	^ b view.