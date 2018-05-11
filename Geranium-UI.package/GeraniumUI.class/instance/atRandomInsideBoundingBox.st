accessing
atRandomInsideBoundingBox
	|p1 p2|
	"you can optimize here by computing the projection once per iteration / not per shape"
	p1 := mapView map latLonToRoassal: 46.16352961038194 @ -1.1302614212036133.
	p2 := mapView map latLonToRoassal: 46.166851083597415 @ -1.1267745494842527.
	^ { p1 x . p2 x } max - ((p1 x - p2 x) abs) rounded atRandom @ 
	{ p1 y . p2 y } max - ((p1 y - p2 y) abs) rounded atRandom.