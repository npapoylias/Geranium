accessing
seasonalTemperatureSeriesAround: aMeanTemperature withStandardDeviation: sd

	| g samples |
	g := (PMGaussianGenerator new)
		mean: aMeanTemperature;
		standardDeviation: sd;
		generator: PMLinearCongruentialRandomGenerator new.
	"g generator seed: 42."
	samples := OrderedCollection new.
	1 to: (365*24)/4 do: [ :i | samples add: g next ].
	^ samples
	