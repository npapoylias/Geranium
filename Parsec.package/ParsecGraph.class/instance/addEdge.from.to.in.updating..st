adding
addEdge: edge from: from to: to in: v updating: anchors
	
	| line e label  |
	line := RTDecoratedLine new 
			filledArrowHead;
			filledCircleTail;
			line: (RTBezier3Line new 
			width: [ :m | RTScale linear domain: #(60 100); range: #(2 6); scale: m fourth ]);
			attachPoint: (RTBorderAttachPoint new offset: 9);
			color: (Color colorFrom: edge third) "trans".
	e := RTEdge on: edge from: from to: to.
	e+line.
	v add: e.
	label := (RTLabel new elementOn: (edge fifth printStringLimitedTo: 20)) color: Color black; yourself.
				"v add: label."
	anchors add: (label -> (RTAnchorConstraint new
		element: label;
		edge: e;
		balance: 0.5;
		minDistance: 20))