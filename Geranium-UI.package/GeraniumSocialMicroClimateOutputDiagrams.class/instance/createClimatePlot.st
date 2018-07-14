as yet unclassified
createClimatePlot
	|methodsRoassal methodsTrachel greatestAge p1 p2 |
	climatePlot := RoassalModel new.
	methodsRoassal := RTObject withAllSubclasses flatCollect: #rtmethods.
	methodsTrachel := TRObject withAllSubclasses flatCollect: #rtmethods.
	methodsRoassal := methodsRoassal select: [ :m | m numberOfLinesOfCode < 2 ].
	methodsTrachel := methodsTrachel select: [ :m | m numberOfLinesOfCode < 2 ].
	greatestAge := (methodsTrachel , methodsRoassal collect: [ :m | m date asUnixTime ]) min.
	p1 := methodsRoassal collect: [ :m | ((m date asUnixTime - greatestAge) / 3600) -> m numberOfLinesOfCode ].
	p2 := methodsTrachel collect: [ :m | ((m date asUnixTime - greatestAge) / 3600) -> m numberOfLinesOfCode ].
	climatePlot script: [ :v :c |
			| b ds |
		b := RTGrapher new view: v.
		"b extent: 300 @ 300."
		ds := RTData new.
		ds dotShape circle
			color: (Color green alpha: 0.3);
			size: 5.
		ds
			points: p1;
			x: #key;
			y: #value.
		ds interaction popup.
		b add: ds.
		ds := RTData new.
		ds dotShape circle
			color: (Color orange alpha: 0.3);
			size: 5.
		ds
			points: p2;
			x: #key;
			y: #value.
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
		v @ (RTGridView new gridSize: 10).
		v
	]