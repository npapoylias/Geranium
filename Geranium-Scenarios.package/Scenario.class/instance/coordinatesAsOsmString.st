resolving
coordinatesAsOsmString 

	^ (WriteStream on: String new)
			nextPutAll: coordinates key x asString;
			nextPut: $,;
			nextPutAll: coordinates key y asString;
			nextPut: $,;
			nextPutAll: coordinates value x asString;
			nextPut: $,;
			nextPutAll: coordinates value y asString;
			contents