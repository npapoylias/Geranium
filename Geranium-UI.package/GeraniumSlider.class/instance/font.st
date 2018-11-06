accessing
font

	^ font ifNil: [ font := (LogicalFont familyName: 'Source Sans Pro' pointSize: 20) forceBold ]