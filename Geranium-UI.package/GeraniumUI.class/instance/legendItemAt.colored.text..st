rendering
legendItemAt: y colored: aColor text: aText
	
	^ {(self boxColored: aColor height: 2 width: 2 bWidth: 2) translateTo: (self relativeToBoundingBox: -53 @ y).
	  (self label: aText colored: #black height: 1) translateTo: (self relativeToBoundingBox: -47 @ y+0.3)}.