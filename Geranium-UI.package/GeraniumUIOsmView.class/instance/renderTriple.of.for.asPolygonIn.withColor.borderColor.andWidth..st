examples
renderTriple: aTriple of: mData for: aView asPolygonIn: aMap withColor: color borderColor: bcolor andWidth: borderWidth

	| nodes type parameter value |

	type := aTriple first.
	parameter := aTriple second.
	value := aTriple third.
	nodes := self idsToPositionsFor: aMap given: mData.
	((mData at: 'elements') select: [ :el | (el at: 'type') = type ])
		do: [ :item | 
			| shape |
			((item at: 'tags') at: parameter ifAbsent: [  ]) = value
				ifTrue: [ shape := RTPolygon new
						borderColor: (bcolor value: item);
						borderWidth: borderWidth;
						color: (color value: item).
					shape
						vertices: ((item at: 'nodes') collect: [ :n | nodes at: n ]).
					aView add: (mapElements add: (self interactionFor: (shape elementOn: (item at: 'tags')))) "@ RTPopup" ] ]