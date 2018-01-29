tests
testStats

	"examples -- refactor to assertions for average, sd, min and max"
	
	((5 ~ 2) | [ 0 -> 10 ]) plot.
	((5 ~ 2) | [ 0 -> 10 ]) identityHistogram.
	((5 ~ 2.0) | [ 0 -> 10 ]) plot.
	((5 ~ 2.0) | [ 0 -> 10 ]) histogram.
	(5.0 ~ 2) plot.
	(5.0 ~ 2) histogram.
	(5 ~ 2) plot.
	(5 ~ 2) identityHistogram.
	[ 0 -> 10 ] asRangedDistribution plot.
	[ 0 -> 10 ] asRangedDistribution identityHistogram.
	[ 0.0 -> 10 ] asRangedDistribution plot.
	[ 0.0 -> 10 ] asRangedDistribution histogram.
	[ 0 ~> 10 ] asRangedDistribution plot.
	[ 0 ~> 10 ] asRangedDistribution identityHistogram.
	[ 0.0 ~> 10 ] asRangedDistribution plot.
	[ 0.0 ~> 10 ] asRangedDistribution histogram.
	5 asRangedDistribution plot.
	5.0 asRangedDistribution plot.
	(true % 90) plot.
	(true % 90) identityHistogram.
	(false % 90) plot.
	(false % 90) identityHistogram.
	({ 0 . 1 . 2 } % { 10 . 20 . 70 }) plot.
	({ 0 . 1 . 2 } % { 10 . 20 . 70 }) identityHistogram.
	ClimateProfile new 
		medianTemperature: (20.0 ~ 3) | [0 -> 32]; 
		seasonalTemperatureVariation: 3;
		temperaturePlot.