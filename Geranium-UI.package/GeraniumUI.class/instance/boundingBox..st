accessing
boundingBox: aString

	boundingBox := (aString substrings: ',') collect: [ :s | s asNumber ].
	boundingBox := (boundingBox first @ boundingBox second) -> boundingBox third @ boundingBox fourth.