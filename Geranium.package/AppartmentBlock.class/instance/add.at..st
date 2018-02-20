accessing
add: anAppartment at: floorCorridorAppNumber

	self appartments at: floorCorridorAppNumber put: anAppartment.
	anAppartment exposure: (self exposureFor: floorCorridorAppNumber).
	anAppartment locationWithInBlock: floorCorridorAppNumber. 
	anAppartment block: self.