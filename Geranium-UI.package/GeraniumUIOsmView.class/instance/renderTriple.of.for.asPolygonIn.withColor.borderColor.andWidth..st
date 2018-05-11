examples
renderTriple: aTriple of: mapData for: aView asPolygonIn: map withColor: color borderColor: bcolor andWidth: borderWidth

	| nodes type parameter value |

	type := aTriple first.
	parameter := aTriple second.
	value := aTriple third.
	nodes := self idsToPositionsFor: map given: mapData.
	((mapData at: 'elements') select: [ :el | (el at: 'type') = type ])
		do: [ :item | 
			| shape |
			((item at: 'tags') at: parameter ifAbsent: [  ]) = value
				ifTrue: [ shape := RTPolygon new
						borderColor: bcolor;
						borderWidth: borderWidth;
						color: color.
					shape
						vertices: ((item at: 'nodes') collect: [ :n | nodes at: n ]).
					aView add: (mapElements add: (shape elementOn: (item at: 'tags'))) @ RTPopup ] ]