instance creation
new

	|inst|
	inst := super new.
	inst seed: ((1 to: 4) collect: [:i | GRSeed seed]).
	^ inst