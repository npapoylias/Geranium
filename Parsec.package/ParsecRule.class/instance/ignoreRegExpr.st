accessing
ignoreRegExpr

	^ iregExpr ifNil: [ iregExpr := (self grammar at: #ignore) regExpr ]
	