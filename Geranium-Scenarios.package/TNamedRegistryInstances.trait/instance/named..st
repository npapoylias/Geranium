instance creation
named: aName
	
	self propertyAt: #name put: aName.
	self class registry at: aName put: self