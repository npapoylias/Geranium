as yet unclassified
complete: aState

	charts currentAddAll: 
		(charts copyStatesWaitingFor: aState 
			from: aState from"previousReadingPosition"
			to: aState to) "have recognized up to reading pos"
