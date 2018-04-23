setup
widgetInteractions
	
	viewer whenClassChanged: [ :class | text behavior: class ].
	viewer whenApiChanged: [ :item | 
		item ifNotNil: [ text text: item sourceCode ]
	].
	viewer whenEventChanged: [ :item | 
		item ifNotNil: [ text text: item sourceCode ]
	].