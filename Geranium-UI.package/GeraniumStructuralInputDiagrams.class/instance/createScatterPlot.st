initialization
createScatterPlot
	| buildings  types type_colors building_to_type |
	
	buildings := report inputVisitor buildings."{ n_residences . n_occupants . block_or_house . type }"
	building_to_type := [: b | (report inputVisitor modelToScenarioDict at: b) first].
	types := (buildings collect: [: b | building_to_type value: b]) asSet.
	type_colors := (types asOrderedCollection collectWithIndex: [ :t :i | t -> (Color distinctTenLightColors at: i) ]) asDictionary.
	
	scatterplot := RoassalModel new.
	scatterplot script: [ :v :c | | g ds |
		self storeCanvas: c and: v. 
		g := RTGrapher new view: v.
		"b extent: 300 @ 300."
		buildings do: [ :b |
			ds := RTData new.
			ds dotShape circle
				color: ((type_colors at: (building_to_type value: b)) alpha: 0.3); "color according to type"
				size: [:_b | _b occupantSize * 5]. "n_residences"
			ds
				points: {b};
				x: [:_b | buildings indexOf: _b "type_colors keys indexOf: (building_to_type value: _b)"]; "index according to type"
				y: [:_b | _b surface]."n_occupants" "should be surface"
			ds interaction popup.
			g add: ds.
		].
		g axisX
			noDecimal;
			noLabel;
			title: 'Buildings'.
		g axisY
			noDecimal;
			title: 'Surface'.
		"g addDecorator: (RTCursorFollower new color: Color blue)." "FOLLOWING WITH THE MOUSE..."
		g build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v
]