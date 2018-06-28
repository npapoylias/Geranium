accessing
occupantSize

	^ (self residences collect: [ :r | r occupantSize ]) sum