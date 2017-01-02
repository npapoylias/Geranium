accessing
printToLog
	logging
		ifTrue: [ Transcript
				show: '[Chart' , chartIndex asString;
				show: ']';
				show: '======================';
				cr ]