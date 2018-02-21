*Geranium-Distributions
dottedPlot: aColor
	"
	#(1 2 3 4 5) plot
	"
	| b ds |
	b := RTGrapher new.
	
	"We defien the size of the charting area"
	b extent: 500 @ 100.
	
	ds := RTData new.
	"When the mouse is above a bar, say which class we are point at"
	ds interaction popup.
	ds points: self.
	ds dotShape rectangle color: aColor.
	b add: ds.
	
	b build.
	^ b view
	