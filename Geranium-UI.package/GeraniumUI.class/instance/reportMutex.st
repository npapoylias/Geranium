accessing
reportMutex

	^ reportMutex ifNil: [ reportMutex := Mutex new ]