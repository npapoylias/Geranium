accessing
removeIndex: anIndex
	"too costly ?"
	array 
		replaceFrom: anIndex 
		to: currentSize - 1 
		with: array 
		startingAt: anIndex+1.
	array at: currentSize put: nil.	
	currentSize := currentSize - 1.
