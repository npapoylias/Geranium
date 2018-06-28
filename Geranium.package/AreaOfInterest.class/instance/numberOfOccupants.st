accessing
numberOfOccupants

	^ (self residences collect: [ :r | r occupantSize ]) sum