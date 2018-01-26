tests
testStats

	"examples -- refactor to assertions for average, sd, min and max"
	
	((5 ~ 2) | [ 0 -> 10 ]) plot.
	((5 ~ 2.0) | [ 0 -> 10 ]) plot.
	(5.0 ~ 2) plot.
	[ 0 -> 10 ] asRangedDistribution plot.
	[ 0.0 -> 10 ] asRangedDistribution plot.
	[ 0 ~> 10 ] asRangedDistribution plot.
	[ 0.0 ~> 10 ] asRangedDistribution plot.
	5 asRangedDistribution plot.
	5.0 asRangedDistribution plot.
	(true % 90) plot.
	(false % 90) plot.
	({ 0 . 1 . 2 } % { 10 . 20 . 70 }) plot.
	ClimateProfile new 
		medianTemperature: (20.0 ~ 3) | [0 -> 32]; 
		seasonalTemperatureVariation: 3;
		temperaturePlot.