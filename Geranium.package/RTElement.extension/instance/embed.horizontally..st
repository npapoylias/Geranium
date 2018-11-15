*Geranium
embed: aCollection horizontally: spacing

	RTHorizontalLineLayout new gapSize:spacing; on:aCollection.
	RTNest new on: self nest: aCollection