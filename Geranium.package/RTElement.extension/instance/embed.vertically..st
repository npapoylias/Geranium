*Geranium
embed: aCollection vertically: spacing

	RTVerticalLineLayout new gapSize:spacing; on:aCollection.
	RTNest new on: self nest: aCollection