initialize
initialize

	super initialize.

	script := [ :v :canvas | ] asValueHolder.
	script whenChangedDo: [ :s | self refresh ].
	self flag: 'Remove lastEvent'.
	lastEvent := nil asValueHolder.