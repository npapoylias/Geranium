*Geranium
sourceWithoutSelector
	|sc|
	sc := self sourceCode.
	^ sc copyFrom: self selector size + 1 to: sc size
