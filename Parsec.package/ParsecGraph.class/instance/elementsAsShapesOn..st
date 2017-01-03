accessing
elementsAsShapesOn: data

	^ (RTSelectiveShape new
		shape: #fifth;
		width: [ :m | RTScale linear domain: #(40 80); range: #(20 60); scale: m third.];
		text: #second;
		labelShapeDo: [ :shape | shape outlineWidth: 0.5; outlineColor: #fourth ];
		backgroundColor: #fourth;
		color: Color white) elementsOn: data.
