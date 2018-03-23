instance creation
with: aBlock "accepting composer view and returning rows of assoc name->viz"

	|c vizs currentRowNames lastRowNames names v |
		
	c := RTComposer new.
	c gap: 155.
	names := OrderedCollection new.
	vizs := aBlock value: c view.
	vizs doWithIndex: [ :row :rowIndex |
		lastRowNames := currentRowNames.
		currentRowNames := OrderedCollection new.
		row doWithIndex: [ :assoc :index | 
			assoc value build. 
			names add: assoc key.
			c group: (currentRowNames add: assoc key).
			(rowIndex = 1 and: [index > 1]) 
				ifTrue: [ 
					c move: currentRowNames last 
					onTheRightOf: (currentRowNames at: index - 1) 
				]. 
				lastRowNames 
					ifNotNil: [ 
						c move: currentRowNames last
						belowAlignFromLeft: (lastRowNames at: index)
					].
		]
	].
	names do: [:n | c nameGroup: n as: n asString].
	c propagateHighlightToAll.
	v := c view.
	v @ RTDraggableView.
	v @ (RTGridView new gridSize: 10).
	v @ RTZoomableView.
	v @ RTDoubleScrollBar.
	"v @ RTSelectionBox."
	^ v