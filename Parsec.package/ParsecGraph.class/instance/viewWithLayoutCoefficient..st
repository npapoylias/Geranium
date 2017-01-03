accessing
viewWithLayoutCoefficient: forceCoefficient

	
	|anchors before edges elements v data e label |

	anchors := OrderedCollection new.	
	v := RTView new.
	data := self elements 
		collect: [ :el | 
			self propertiesForElement: el"(Array with: e with: e with: 75 with: '#6FB1FC' with: #ellipse)" ]. 
	edges := self edges collect: [ :ed | self propertiesForEdge: ed ].
		"(Array with: ed key key with: ed value with: (self colorFor: ed key) with: 90 with: ed key value)"
	
	elements := self elementsAsShapesOn: data.
	v addAll: elements.
	elements @ RTDraggable.
	edges do: [ :edge| | from to line |
		from := elements detect: [ :el | el model first = edge first ] ifNone: [ nil ].
		to:= elements detect: [ :el | el model first = edge second ] ifNone: [ nil ].
		from = to ifTrue: [  |t id| "add an intermediate 0 sized node and connect through it"
			id := '.' , from model first asString.
			t := (self elementsAsShapesOn:  
					{(Array with: id with: '' with: 0 with: (self colorFor: '') with: #ellipse)}) first.
			t @ RTDraggable.
			v add: t.
			self addEdge: edge from: from to: t in: v updating: anchors.
			self addEdge: edge from: t to: to in: v updating: anchors.
		]
			ifFalse: [  
				self addEdge: edge from: from to: to in: v updating: anchors.
			]
	].

	v edges do: #pushBack.


	"elements first translateTo: 300@260.
	elements second translateTo: 170@150.
	elements third translateTo: 160@260.
	elements fourth translateTo: 290@150."
	v @ RTDraggableView @ RTZoomableView.
	(RTLayoutBuilder new forceWithCharge: -1*(10 raisedTo: forceCoefficient)*(v elements size)) on: (before := v elements).
	anchors do: [:a | v add: a key. a value build ].
	before do: [ :em | em translateBy: 0.001  ]. "hack to update edges"
	^ v.
					