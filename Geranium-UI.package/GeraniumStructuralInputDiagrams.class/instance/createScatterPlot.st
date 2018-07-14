initialization
createScatterPlot
	| methodsRoassal methodsTrachel greatestAge |
	scatterplot := RoassalModel new.
	methodsRoassal := RTObject withAllSubclasses flatCollect: #rtmethods.
	methodsTrachel := TRObject withAllSubclasses flatCollect: #rtmethods.
	methodsRoassal := methodsRoassal select: [ :m | m numberOfLinesOfCode < 300 ].
	methodsTrachel := methodsTrachel select: [ :m | m numberOfLinesOfCode < 300 ].
	greatestAge := (methodsTrachel , methodsRoassal collect: [ :m | m date asUnixTime ]) min.
	scatterplot script: [ :v :c | | b ds |
		b := RTGrapher new view: v.
		"b extent: 300 @ 300."
		ds := RTData new.
		ds dotShape circle
			color: (Color blue alpha: 0.3);
			size: 5.
		ds
			points: methodsRoassal;
			x: [ :m | (m date asUnixTime - greatestAge) / 3600 ];
			y: #numberOfLinesOfCode.
		ds interaction popup.
		b add: ds.
		ds := RTData new.
		ds dotShape circle
			color: (Color red alpha: 0.3);
			size: 5.
		ds
			points: methodsTrachel;
			x: [ :m | (m date asUnixTime - greatestAge) / 3600 ];
			y: #numberOfLinesOfCode.
		ds interaction popup.
		b add: ds.
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