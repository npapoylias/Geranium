accessing
seasonalHumiditySeriesWithDeviation: humidityVariation

	| g samples |
	g := medianHumidity copy 
		"generator: PMLinearCongruentialRandomGenerator new;"
		mean: medianHumidity mean + humidityVariation.
	"g generator seed: 42."
	samples := OrderedCollection new. "make more realistic by stabilizing,
	within and between days"
	1 to: (365*24)/4 do: [ :i | samples add: g next ].
	^ samples
	