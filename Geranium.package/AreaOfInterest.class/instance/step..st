accessing
step: time

	^ self 
			historyOf: #consumption
			add: (self buildings collect: [ :building | building step: time ]) sum