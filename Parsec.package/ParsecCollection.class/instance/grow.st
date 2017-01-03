accessing
grow

	|newArray newSize|
	newSize := totalSize * 2.
	newArray := Array new: newSize.
	newArray replaceFrom: 1 to: totalSize with: array startingAt: 1.
	totalSize := newSize.
	array := newArray.