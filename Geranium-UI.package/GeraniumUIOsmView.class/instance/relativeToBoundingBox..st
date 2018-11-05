helper
relativeToBoundingBox: offset
	|p1 p2|
	"you can optimize here by computing the projection once per iteration / not per shape"
	p1 := self map latLonToRoassal: boundingBox key.
	p2 := self map latLonToRoassal: boundingBox value.
	^ { p1 x . p2 x } max + offset x @ 
	({ p1  y . p2 y } min + offset y).