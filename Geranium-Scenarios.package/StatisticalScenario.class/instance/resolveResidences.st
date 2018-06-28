accessing
resolveResidences

	^ totalNumberOfResidences 
		ifNotNil: [  totalNumberOfResidences next ]
		ifNil: [ nil ]