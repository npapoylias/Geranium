accessing
stepMutex

	^ stepMutex ifNil: [ stepMutex := Mutex new ]