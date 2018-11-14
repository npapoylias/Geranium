instance creation
new

	|inst|
	inst := super new.
	inst generator seed: GRSeed seed.
	^ inst