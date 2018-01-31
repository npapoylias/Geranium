tests
setUp

	self class selectors 
		select: [ :s | (('test*' match: s asString) | (s = #setUp) | (s = #tearDown)) not  ]
		thenDo: [ :s | self perform: s ]
	