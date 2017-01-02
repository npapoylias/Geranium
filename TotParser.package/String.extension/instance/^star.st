*TotParser
* number

	|wr|
	
	wr := WriteStream  on: String new.

	1 to: number do: [:i | wr nextPutAll: self].
	
	^ wr contents