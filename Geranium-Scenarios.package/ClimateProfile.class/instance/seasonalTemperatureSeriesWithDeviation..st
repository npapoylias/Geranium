accessing
seasonalTemperatureSeriesWithDeviation: temperatureVariation

	| g samples |
	g := medianTemperature copy 
		generator: PMLinearCongruentialRandomGenerator new;
		mean: medianTemperature mean + temperatureVariation.
	"g generator seed: 42."
	samples := OrderedCollection new. "make more realistic by stabilizing,
	within and between days"
	1 to: (365*24)/4 do: [ :i | samples add: g next ].
	^ samples
	