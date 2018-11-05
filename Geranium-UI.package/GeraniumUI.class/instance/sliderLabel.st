helper
sliderLabel

	| month day hour label timeTable monthTable |
	timeTable := #(0 744 1488 2160 2904 3624 4368 5088 5832 6576 7296 8040 8760). 
	month := (timeTable detectIndex: [ :upperHour | (step + 1) <= upperHour ]) - 1.
	day := (step + 1 - (timeTable at: month) / 24) ceiling. 
	hour := (step - (timeTable at: month)) % 24.
	monthTable := #(December January February 
	March April May 
	June July August 
	September October November).
	label := WriteStream on: String new.
	label 
		nextPutAll: (monthTable at: month) asString;
		nextPutAll: ', ';
		nextPutAll: day asDay;
		nextPutAll: ' , ';
		nextPutAll: hour asHour.
	^ label contents