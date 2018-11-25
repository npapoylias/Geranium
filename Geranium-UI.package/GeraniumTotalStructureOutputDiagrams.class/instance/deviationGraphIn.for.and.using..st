visualization
deviationGraphIn: view for: averageDataPoints and: deviationDataPoints using: aColorPallete "should add support for the labels here"

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
	"self assert: deviationDataPoints size = averageDataPoints size."

	pts := Dictionary new.
	
	averageDataPoints doWithIndex: [ :row :index |  
		pts at: (aColorPallete at: index) put: row -> (deviationDataPoints at: index).
	].

	"view cleanAll."
	b := RTGrapher new view: view.
	pts keysAndValuesDo: [ :color :seriesDevPair | |ds dec| 
		ds := RTData new.
		ds points: seriesDevPair key.
		dec := FasterRTDevVarDecorator new.
		dec
			moveBehind;
			deviation: 0.05; 
			color: (color alpha: 0.5);
			points: seriesDevPair key.
		ds
			connectUsing:
				(RTLine new
					color: (Color black alpha: 1.0); 
					width: 2).
		b add: ds.
		b addDecorator: dec.
		"b
			addDecorator:
				(RTAreaDecorator new
					points: seriesDevPair key;
					color: (color alpha: 0.3))" ].
	b
		axisX;
		axisY.
	"b build."
	"lb := RTLegendBuilder new.
	lb view: b view.
	averageDataPoints doWithIndex: [ :c :i | lb addColor: (aColorPallete at: i) text: 'Series  ' , i printString ].
	lb build."
	"view canvas camera focusOnCenterScaled: view canvas extent * 0.9."
	"view @ RTDraggableView.
	view @ (RTGridView new gridSize: 10).
	view @ RTZoomableView."
	"view @ RTDoubleScrollBar."
	"b view signalUpdate."
	^ b .

