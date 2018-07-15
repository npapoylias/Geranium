*Geranium-Distributions
boxedPlot: aColor withCaption: aString inView: aView
	| b deco |
	"{#a -> (1 to: 100) . #b -> (10 to: 200) . #c -> (30 to: 400)}
		boxedPlot: Color green withCaption: 'hallo'"
	b := RTGrapher new.
	aView ifNotNil: [ b view: aView ].
	"b extent: self vizSize."
	self
		do: [ :assoc | 
			| ds |
			ds := RTBoxPlotDataSet new.
			ds showMean: true.
			ds points: assoc value.
			ds model: assoc key.
			ds y: [ :x | x ].
			ds boxShape fillColor: aColor.
			ds boxWidth: 80.
			b add: ds ].
	b axisX
		noTick;
		noLabel.
	deco := RTHorizontalAllValuesDecorator new.
	deco
		labelRotation: -45;
		labelConversion: [ :index | (self at: index) key ].
	b addDecorator: deco.
	aString ifNotNil: [self addLabel: aString onGraph: b].
	^ b