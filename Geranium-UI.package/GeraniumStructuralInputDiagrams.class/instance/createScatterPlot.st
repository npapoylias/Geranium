initialization
createScatterPlot
	| structure  types type_colors|
	
	structure := report buildingSummary."{ n_residences . n_occupants . block_or_house . type }"
	types := (structure collect: [ :b | b last ]) asSet.
	type_colors := (types asOrderedCollection collectWithIndex: [ :t :i | t -> (Color distinctTenStrongColors at: i) ]) asDictionary.
	scatterplot := RoassalModel new.
	scatterplot script: [ :v :c | | b ds |
		b := RTGrapher new view: v.
		"b extent: 300 @ 300."
		structure do: [ :s |
			ds := RTData new.
			ds dotShape circle
				color: ((type_colors at: s last) alpha: 0.3); "color according to type"
				size: #second. "size according to n_occupants"
			ds
				points: s;
				x: [:x | type_colors indexOf: x last]; "index according to type"
				y: #first.
			ds interaction popup.
			b add: ds.
		].
		b axisX
			noDecimal;
			noLabel;
			title: 'Buildings'.
		b axisY
			noDecimal;
			title: 'Residences'.
		b build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ RTDraggableView.
		v @ (RTGridView new gridSize: 10).
		v @ RTZoomableView.
		v @ RTDoubleScrollBar.
		v
]