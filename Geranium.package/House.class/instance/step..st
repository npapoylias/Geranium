accessing
step: time

	^ self 
		historyOf: #consumption
		add: (super step: time) 		