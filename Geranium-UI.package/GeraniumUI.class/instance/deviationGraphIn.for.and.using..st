visualization
deviationGraphIn: view for: averageDataPoints and: deviationDataPoints using: aColorPallete

	"after 100 it becomes slower, but maybe this is due to the computation cumsum
	performed ++ of course the total redraw"
	
	"usage:
	
		deviationGraphIn: v 
		for: {
			(1 to: 50) collect: [ :i | 50 atRandom ]. 
			(1 to: 50) collect: [ :i | 50 atRandom ].
			(1 to: 50) collect: [ :i | 50 atRandom ].
		} 
		and: {
			(1 to: 50) collect: [ :i | 5 atRandom ].
			(1 to: 50) collect: [ :i | 5 atRandom ].
			(1 to: 50) collect: [ :i | 5 atRandom ].
		}
		using: Color distinctTenLightColors
	
	"

	| pts b lb|
	
	self assert: aColorPallete size >= averageDataPoints size.
	self assert: deviationDataPoints size = averageDataPoints size.

	pts := Dictionary new.
	
	averageDataPoints doWithIndex: [ :row :index |  
		pts at: (aColorPallete at: index) put: row -> (deviationDataPoints at: index).
	].

	view cleanAll.
	b := RTGrapher new view: view.
	pts keysAndValuesDo: [ :color :seriesDevPair | |ds dec| 
		ds := RTData new.
		ds points: seriesDevPair key.
		dec := RTDevVarDecorator new.
		dec
			moveBehind;
			deviation: 0.5; "this should be a different value for each point -- should inherit from RTDevVarDecorator"
			color: (color alpha: 0.3);
			points: seriesDevPair key.
		ds
			connectUsing:
				(RTLine new
					color: (color alpha: 0.5); 
					width: 1).
		b add: ds.
		"b addDecorator: dec" ].
	b
		axisX;
		axisY.
	b build.
	lb := RTLegendBuilder new.
	lb view: b view.
	averageDataPoints doWithIndex: [ :c :i | lb addColor: (aColorPallete at: i) text: 'Series  ' , i printString ].
	lb build.
	view canvas camera focusOnCenterScaled: view canvas extent * 1.0.
	view @ RTDraggableView.
	view @ (RTGridView new gridSize: 10).
	view @ RTZoomableView.
	view @ RTDoubleScrollBar.
	b view signalUpdate.
	^ b view.

