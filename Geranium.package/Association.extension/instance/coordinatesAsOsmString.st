*Geranium
coordinatesAsOsmString 

	^ (WriteStream on: String new)
			nextPutAll: self key x asString;
			nextPut: $,;
			nextPutAll: self key y asString;
			nextPut: $,;
			nextPutAll: self value x asString;
			nextPut: $,;
			nextPutAll: self value y asString;
			contents