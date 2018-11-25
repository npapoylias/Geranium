initialization
createScatterPlot
	| buildings  types type_colors building_to_type processed lb |
	
	buildings := (report inputVisitor buildings collect: [ :b | b residences ]) deepFlatten."{ n_residences . n_occupants . block_or_house . type }"

	building_to_type := [: b | (report inputVisitor modelToScenarioDict at: b) first].
	types := (buildings collect: [: b | building_to_type value: b]) asSet asOrderedCollection sort: [:a :b | a name < b name].
	type_colors := (types asOrderedCollection collectWithIndex: [ :t :i | t -> (Color distinctTenLightColors at: i) ]) asDictionary.
	
	scatterplot := RoassalModel new.
	scatterplot script: [ :v :c | | g ds |
		processed ifNil: [processed := true. self processCanvas: c and: v].
		g := RTGrapher new view: v.
		"b extent: 300 @ 300."
		types do: [ :t |
			ds := RTData new.
			ds dotShape circle
				color: ((type_colors at: t) alpha: 0.3); "color according to type"
				size: [:_t | (buildings select: [ :b | (building_to_type value: b) = _t ] thenCollect: #occupantSize) average * 35]."n_residences"
			ds
				points: {t};
				x: [:_t | types indexOf: _t "type_colors keys indexOf: (building_to_type value: _b)"]; "index according to type"
				y: [:_t | (buildings select: [ :b | (building_to_type value: b) = _t ] thenCollect: #surface) average].
			ds interaction popup.
			g add: ds.
		].
		g axisX
			noDecimal;
			noLabel;
			title: 'Residences'.
		g axisY
			noDecimal;
			title: 'Avg. Surface'.
		"g addDecorator: (RTCursorFollower new color: Color blue)." "FOLLOWING WITH THE MOUSE..."
		g build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		lb := RTLegendBuilder new.
		lb view: v.
		"lb addText: 'System complexity view'."
		type_colors associationsDo: [ :t |  lb addColorFadingFrom: t value to: Color black text: t key asString].
		lb build.
		v
]