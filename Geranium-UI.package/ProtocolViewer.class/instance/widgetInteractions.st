setup
widgetInteractions
	
	models whenSelectedItemChanged: [ :class | 
		api resetSelection.
		events resetSelection.
		class 
			ifNil: [ api items: #(). events items: #() ]
			ifNotNil: [  
				api items: (self methodsIn: class for: 'api').
				events items: (self methodsIn: class for: 'api-events')]	
	].
	api whenSelectedItemChanged: [ :method | 
		method ifNotNil: [ events resetSelection ]
	].	
	events whenSelectedItemChanged: [ :method | 
		method ifNotNil: [ api resetSelection ]	
	]
	