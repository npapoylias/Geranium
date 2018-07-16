accessing
gradientRange

	^ gradientRange ifNil: [ self gradientRange: (0.0 to: 359.9 by: 0.1) ]