api
render
	| b |
	outputView cleanAll.
	b := (data copyFrom: 1 to: step)
		connectedPlot: Color red
		withCaption: step asString
		inView: outputView.
	b build.
	outputView canvas camera
		focusOnCenterScaled: outputView canvas extent * self cameraScale.
	outputView @ RTDraggableView.
	outputView @ (RTGridView new gridSize: 10).
	outputView @ RTZoomableView.
	"outputView @ RTDoubleScrollBar."
	outputView signalUpdate