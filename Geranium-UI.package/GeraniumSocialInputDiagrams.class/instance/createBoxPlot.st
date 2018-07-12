initialization
createBoxPlot

	boxplot := RoassalModel new.
	boxplot script: [ :v :c | | b createList r d today |
	r := Random new.
	createList := [ :size :d1 :d2 | (1 to: size) collect: [ :i | d1 + (r next * (d2 - d1)) ] ].
	b := RTGrapher new view: v.
	today := d := Date today.
	(1 to: 10)
		do: [ :i | 
			| ds |
			ds := RTBoxPlotDataSet new.
			ds showMean: true.
			ds boxShape
				if: [ :item | item median > 10 ] fillColor: [ Color green ];
				if: [ :item | item median < 5 ] fillColor: [ Color orange ];
				if: [ :item | item hasOutlier ] fillColor: [ Color red ].
			ds boxLineShape color: Color blue.
			ds points: (createList value: 20 value: 0 value: 20).
			ds model: d.
			ds x: [ :date | date julianDayNumber - today julianDayNumber + 1 ].
			b add: ds.
			d := d next ].
	b axisX
		labelRotation: -30;
		labelConversion: [ :n | Date julianDayNumber: n + today julianDayNumber - 1 ];
		numberOfLabels: 10.
	b build.
	v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
	v @ RTDraggableView.
	v @ (RTGridView new gridSize: 10).
	v @ RTZoomableView.
	v @ RTDoubleScrollBar.
	v]