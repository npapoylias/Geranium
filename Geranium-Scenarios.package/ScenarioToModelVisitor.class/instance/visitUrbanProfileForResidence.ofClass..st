visiting
visitUrbanProfileForResidence: aUrbanProfileForResidence ofClass: aResidenceClass

	|residence category surface exposure occupantClass occupants numberOfChildren income awareness ownership|
	
	residence := aResidenceClass new.
	category := aUrbanProfileForResidence category.
	surface := aUrbanProfileForResidence surface.
	exposure := aUrbanProfileForResidence exposure. "will be nil for appartments and set
	by the appartmentBlock"
	
	residence
		category: category next; "might be a distribution .. for all these properties"
		surface: surface next.
		
	exposure ifNotNil: [ residence exposure: exposure next ].
	
	occupantClass := aUrbanProfileForResidence occupantClass.
	occupants := occupantClass next new.
	residence occupants: occupants.
	
	numberOfChildren := aUrbanProfileForResidence numberOfChildren.
	income := aUrbanProfileForResidence income.
	awareness := aUrbanProfileForResidence awareness.
	ownership := aUrbanProfileForResidence awareness.
	
	occupants
		income: income next;
		awareness: awareness next;
		ownership: ownership next.
		
	numberOfChildren ifNotNil: [ occupants numberOfChildren: numberOfChildren next ].
	