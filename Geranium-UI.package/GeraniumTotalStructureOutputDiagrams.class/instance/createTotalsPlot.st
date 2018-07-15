initialization
createTotalsPlot

	
	| b |
	totalsPlot := RoassalModel new.
	totalsPlot script: [ :v :c | 
		| historyUpTillNow deviationDataPoints showMin showMax |
		showMin := step < 100
		ifTrue: [ 1 ]
		ifFalse: [ step // 100 * 100 ].
		showMax := step + 1.
		historyUpTillNow := self consumptionHistoryFrom: showMin To: showMax.
		deviationDataPoints := consumptionHistory.	"should compute it here -- not used by the viz yet"
		b := self
			deviationGraphIn: v
			for: historyUpTillNow
			and: deviationDataPoints
			using: Color distinctTenStrongColors.
		b axisX
			noDecimal;
			title: 'Time'.
		b axisY
			title: 'kWh'.
		b build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		"v @ RTDraggableView."
		v @ (RTGridView new gridSize: 10).
		"v @ RTZoomableView.
		v @ RTDoubleScrollBar."
		v
	]