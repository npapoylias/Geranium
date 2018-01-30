tests
UrbanHypothesisA

	"Sum between -1.0 and 1.0 (ie staying within the category) -- driven by temperature"
	"Should define seperate methods for the w(pi) of each metric"
	
	WeightsProfile new
		named: #UrbanHypothesisA;
		season: [ -0.1 -> 0.1 ]; "country trends determine the distribution of these 3"
		day: [ -0.01 -> 0.01 ];
		hour: [ -0.1 -> 0.1 ];
		exposure: [ -0.1 -> 0.1 ]; "equidistant for the 5 exposure levels"
		occupants: [ 0 -> 0.05 ]; "equidistant from Single to Family up to 0.04 + 0.001 for each kid"
		income: [ -0.05 -> 0.05  ]; "equidistant from 10000 to 200000"
		ownership: [ -0.05 -> 0.05 ]; "boolean for - true /  + false"
		awareness: [ -0.1 -> 0.1 ]; "boolean for - true /  + false"
		temperature: [ -0.4 -> 0.4 ]; "equidistant around 20 (with range -10, 40)"
		humidity: [ -0.09 ->  0.04 ]. "equidistant around 50 (with range 20, 70)"