visiting
visitUrbanProfileForResidence: aUrbanProfileForResidence ofClass: aResidenceClass

	|residence surface exposure occupantClass numberOfChildren income awareness ownership|
	
	residence := aResidenceClass new.
	surface := aUrbanProfileForResidence surface.
	exposure := aUrbanProfileForResidence exposure. "will be nil for appartments and set
	by the appartmentBlock"
	occupantClass := aUrbanProfileForResidence occupantClass.
	numberOfChildren := aUrbanProfileForResidence numberOfChildren.
	income := aUrbanProfileForResidence income.
	awareness := aUrbanProfileForResidence awareness.
	ownership := aUrbanProfileForResidence awareness.
	
	