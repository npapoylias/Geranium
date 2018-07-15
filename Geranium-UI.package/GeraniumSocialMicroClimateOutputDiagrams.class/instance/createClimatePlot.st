as yet unclassified
createClimatePlot
	| historyUpTillNow showMin showMax temperatureUpTillNow humidityUpTillNow |
	
	climatePlot := RoassalModel new.
	"methodsRoassal := RTObject withAllSubclasses flatCollect: #rtmethods.
	methodsTrachel := TRObject withAllSubclasses flatCollect: #rtmethods.
	methodsRoassal := methodsRoassal select: [ :m | m numberOfLinesOfCode < 2 ].
	methodsTrachel := methodsTrachel select: [ :m | m numberOfLinesOfCode < 2 ].
	greatestAge := (methodsTrachel , methodsRoassal collect: [ :m | m date asUnixTime ]) min.
	p1 := methodsRoassal collect: [ :m | ((m date asUnixTime - greatestAge) / 3600) -> m numberOfLinesOfCode ].
	p2 := methodsTrachel collect: [ :m | ((m date asUnixTime - greatestAge) / 3600) -> m numberOfLinesOfCode ]."
	climatePlot script: [ :v :c |
			| b ds |
		showMin := step < 100
			ifTrue: [ 1 ]
			ifFalse: [ step // 100 * 100 ].
		showMax := step + 1.
		historyUpTillNow := (self consumptionHistoryFrom: showMin To: showMax) first.
		temperatureUpTillNow := report input climateProfile temperatureSeries copyFrom: showMin to: showMax.
		humidityUpTillNow := report input climateProfile humiditySeries copyFrom: showMin to: showMax.
		b := RTGrapher new view: v.
		ds := RTData new.
			ds points: historyUpTillNow.
			ds connectColor: Color yellow.
			b add: ds.
		ds := RTData new.
			ds points: temperatureUpTillNow.
			ds connectColor: Color red.
			b add: ds.
		"ds := RTData new.
			ds points: humidityUpTillNow.
			ds connectColor: Color blue.
			b add: ds."
		b axisX
			noDecimal;
			title: 'Time'.
		b axisY
			noDecimal;
			title: 'C & kWh'.
		b build.
		v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
		v @ (RTGridView new gridSize: 10).
		v
	]