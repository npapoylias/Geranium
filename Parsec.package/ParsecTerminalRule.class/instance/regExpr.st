accessing
regExpr

	^ regExpr ifNil: [regExpr := self rightHandSide first first]