examples
mapWithBuildingsCenteredAroundBoundingBox: aBoundingBox colored: catColorDistribution

	"refactor in its own spec/roassal widget.."

	"other info or handle the roads as lines etc"
	| svgPath1 |
	view ifNil: [view := RTView new].
	map := RTOSM new ratio: 100.
	view add: map element.
	coordinatesBox := aBoundingBox.
	mapData := self
		retrieveMapDataDefinedAs: {'way["building"="yes"]' . 'way["highway"=residential]'}
		positionedWithInBoundingBox: (boundingBox := aBoundingBox coordinatesAsOsmString) "'46.16352961038194,-1.1302614212036133,46.166851083597415,-1.1267745494842527'".
	self 
		renderTriple: { 'way' . 'building' . 'yes' } 
		of: mapData for: view asPolygonIn: map 
		withColor: [:item | catColorDistribution next"Color blue"] 
		borderColor: [:item | Color black] andWidth: 5.
	"self renderKiviatIn: view."
	view canvas addMenuAsSVG: self zoomInSVG scale: 0.1 callback: [ RTZoomInMove on: view ].
	"view canvas addMenu: ' + Zoom In ' callback: [ RTZoomInMove on: view ]."
	view canvas addMenuAsSVG: self zoomOutSVG scale: 0.1 callback: [ RTZoomOutMove on: view ].
	"view canvas addMenu: ' - Zoom Out' callback: [ RTZoomOutMove on: view ]."
	view @ RTDraggableView @ RTZoomableView.
	view @ RTDoubleScrollBar.
	RTEmptyViewContext setOnView: view.
	view canvas camera focusOnCenterScaled: view canvas extent * 1.5.

	^ view