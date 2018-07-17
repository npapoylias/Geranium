initialization
createPie
	| stats |
	stats := (report inputVisitor residences collect: [ :r |  r occupants class ]) frequencies associations.
	
	pie := RoassalModel new.
	pie
		script: [ :v :c | | b |
			self storeCanvas: c and: v. 
			b := stats pieWithCaption: nil inView: v.
			"color setting does not seem to work"
			b normalizer normalizeColorUsing:  (RTColorPalette qualitative colors: 3 scheme:'Set2') reverse.
			b build.
			v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
			v @ RTDraggableView.
			v @ (RTGridView new gridSize: 10).
			v @ RTZoomableView.
			v @ RTDoubleScrollBar.
			v
	]