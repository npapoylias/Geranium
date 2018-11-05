helper
sliderLabel

	|hourlyTicks month label |
	hourlyTicks := step asString , '/' , stepMax asString.
	month := (hourlyTicks / 730.0) ceiling.
	month := #(December January February 
	March April May 
	June July August 
	September October November) at: month.
	label := WriteStream on: String new.
	label 
		nextPutAll: month asString;
		nextPut: Character cr;
		nextPutAll: hourlyTicks asString.
	^ label contents