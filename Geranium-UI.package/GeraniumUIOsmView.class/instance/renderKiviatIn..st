rendering
renderKiviatIn: aView

	| data b d elementsAndEdges whiteBackground |
	data := ((1 to: 500) collect: [ :i | 50 atRandom - 25 ]) cumsum.

"We build the graph"
b := RTGrapher new.
b extent: 100 @ 30.
d := RTData new.
d noDot.
d connectColor: Color red.
d points: data.
b add: d.
b axisY
	labelFontHeight: 6;
	color: Color red;
	title: 'Sale'.
b axisX
	color: Color red;
	noTick;
	title: 'country'.
b build.
elementsAndEdges := b view elements , b view edges.

"We create a white background"
whiteBackground := (RTRoundedBox new
	color: Color white trans;
	borderRadius: 10) element.
view add: whiteBackground.
view addAll: elementsAndEdges.
RTNest new on: whiteBackground nest: elementsAndEdges.
whiteBackground translateTo: (self relativeToBoundingBox: -17 @ -13).
view canvas camera translateTo: (self relativeToBoundingBox: -17 @ -13).