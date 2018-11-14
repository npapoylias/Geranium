instance creation
new

	|inst|
	inst := super new.
	inst seed: GRSeed seed.
	^ inst