initialization
initialize

	super initialize.

	readingPosition := 0.
	dummyRule := (#gamma --> #start , #Eof).
	charts := ParsecCharts new.
	logging := false.
	
