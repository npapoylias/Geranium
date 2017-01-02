initialization
initialize

	super initialize.

	readingPosition := 0.
	dummyRule := (#gamma --> #start , #Eof).
	charts := TCharts new.
	logging := false.
	
