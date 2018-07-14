accessing
residences

	^ residences ifNil: [ residences := buildings flatCollect: [ :b | b residences ] ]