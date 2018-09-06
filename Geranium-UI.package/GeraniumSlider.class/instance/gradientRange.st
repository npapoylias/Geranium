accessing
gradientRange

	^ gradientRange ifNil: [ self gradientRange: (170.0 to: 259.9 by: 0.1) ]