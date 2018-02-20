accessing
step: time

	^ self 
			historyOf: #consumption
			add: (self appartments values collect: [ :appartment | appartment step: time ]) sum