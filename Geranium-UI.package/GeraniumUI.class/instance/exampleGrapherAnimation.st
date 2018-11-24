scripts
exampleGrapherAnimation

	"after 100 it becomes slower, but maybe this is due to the computation cumsum
	performed ++ of course the total redraw"

	| pts view draw |
	pts := Dictionary new.
	pts at: Color red put: OrderedCollection new.
	pts at: Color blue put: OrderedCollection new.
	view := RTView new.
	view canvas camera focusOnCenterScaled: view canvas extent * 0.9.
	view.

draw := [
	| b colors points ds dec lb ptsum|
	view cleanAll.
b := RTGrapher new view: view.
colors := Array with: Color red with: Color blue.
points := OrderedCollection new.
colors
	do: [ :c | 
		ds := RTData new.
		(pts at: c) add: 50 atRandom -25.
		ptsum := (pts at: c) cumsum. 
		"pts := ((1 to: 100) collect: [ :i | 50 atRandom - 25 ]) cumsum."
		points add: ptsum.
		ds points: ptsum.
		dec := RTDevVarDecorator new.
		dec
			moveBehind;
			deviation: 0.5;
			color: (c alpha: 0.3);
			points: ptsum.
		ds
			connectUsing:
				(RTLine new
					color: (c alpha: 0.5);
					width: 1).
		b add: ds.
		b addDecorator: dec ].
b
	axisX;
	axisY.
b build.
lb := RTLegendBuilder new.
lb view: b view.
colors doWithIndex: [ :c :i | lb addColor: c text: 'Series  ' , i printString ].
lb build.
view canvas camera focusOnCenterScaled: view canvas extent * 0.9.
b view @ RTZoomableView @ RTZoomableBoxView.
b view].

[1 to: 100 do: [:i | 
"t := ["draw value. view signalUpdate."] timeToRun asMilliSeconds. t < 100 ifTrue: ["(Delay forMilliseconds: 100"-t") wait. "]"]] fork.

view