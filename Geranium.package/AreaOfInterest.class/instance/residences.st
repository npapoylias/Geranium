accessing
residences
	^ residences ifNil: [ residences := (buildings collect: [ :b | b residences ]) flatten]