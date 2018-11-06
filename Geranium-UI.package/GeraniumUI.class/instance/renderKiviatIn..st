rendering
renderKiviatIn: aView
| b n elementsAndEdges whiteBackground |

"Add as svg or image ??"

b := RTKiviatBuilder new.
"b extend: 10 @ 20."
b objects: RTAbstractCircleLayout withAllSubclasses.
n := RTMultiLinearColorForIdentity new objects: b objects. 
b shape circle
	color: [ :value | n rtValue: value kiviatNode named ]
	"size: 10".
b addMetric: #numberOfLinesOfCode.
b addMetric: #numberOfMethods.
b addMetric: #numberOfVariables.
b activatePolygons.
b build.
elementsAndEdges := b view elements , b view edges.
aView addAll: elementsAndEdges.
whiteBackground := (RTRoundedBox new
	color: Color white trans;
	height: 5;
	borderRadius: 10) element.
aView add: whiteBackground.
aView addAll: elementsAndEdges.
RTNest new on: whiteBackground nest: elementsAndEdges.
"whiteBackground translateTo: (self relativeToBoundingBox: -47 @ -43)."
mapView view signalUpdate
"aView canvas camera translateTo: (self relativeToBoundingBox: -47 @ -43)."
"aView canvas camera noInitializationWhenOpen."
"aView canvas camera scale: 1.5."
"aView @ RTDraggableView @ RTZoomableView.
RTEmptyViewContext setOnView: aView."
"v canvas camera translateTo: (map latLonToRoassal: paris)."
"view canvas camera translateTo: (self relativeToBoundingBox: -17 @ -13)."