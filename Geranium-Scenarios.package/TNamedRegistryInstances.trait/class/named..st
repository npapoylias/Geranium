instance creation
named: aName

	^ self registry at: aName put: (self new named: aName)