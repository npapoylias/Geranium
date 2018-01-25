tests
testStats

	"examples -- refactor to assertions for average, sd, min and max"
	
	((5 ~ 2) | [ 0 -> 10 ]) plot.
	((5 ~ 2.0) | [ 0 -> 10 ]) plot.
	(5.0 ~ 2) plot.
	[ 0 -> 10 ] asRangedDistribution plot.
	[ 0.0 -> 10 ] asRangedDistribution plot.
	5 asRangedDistribution plot.
	5.0 asRangedDistribution plot.