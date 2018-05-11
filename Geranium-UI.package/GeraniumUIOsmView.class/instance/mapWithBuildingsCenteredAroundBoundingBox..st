examples
mapWithBuildingsCenteredAroundBoundingBox: aBoundingBox

	"refactor in its own spec/roassal widget.."

	| map mapData |
	"other info or handle the roads as lines etc"
	view ifNil: [view := RTView new].
	map := RTOSM new ratio: 100.
	view add: map element.
	mapData := self
		retrieveMapDataDefinedAs: {'way["building"="yes"]' . 'way["highway"=residential]'}
		positionedWithInBoundingBox: (boundingBox := aBoundingBox) "'46.16352961038194,-1.1302614212036133,46.166851083597415,-1.1267745494842527'".
	self 
		renderTriple: { 'way' . 'building' . 'yes' } 
		of: mapData for: view asPolygonIn: map 
		withColor: Color blue borderColor: Color black andWidth: 5.
	view canvas addMenu: 'In' callback: [ RTZoomInMove on: view ].
	view canvas addMenu: 'Out' callback: [ RTZoomOutMove on: view ].
	view @ RTDraggableView @ RTZoomableView.
	view @ RTDoubleScrollBar.
	RTEmptyViewContext setOnView: view.
	view canvas camera focusOnCenterScaled: view canvas extent * 1.5.
	^ view