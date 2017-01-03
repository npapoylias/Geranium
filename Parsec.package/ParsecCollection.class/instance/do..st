accessing
do: aBlock

	1 to: currentSize do: [:i | (aBlock value: (self at: i)) ]