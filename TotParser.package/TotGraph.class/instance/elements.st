accessing
elements

	^ gElements ifNil: [ gElements := Set new.
		gEdges	do: [ :e | gElements add: e value; add: e key key ].
		gElements
	]
