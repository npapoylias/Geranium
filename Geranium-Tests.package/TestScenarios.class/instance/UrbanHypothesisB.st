tests
UrbanHypothesisB

	"Sum larger -1.0 and 1.0 (ie moving between categories) with social aspect 
	more prevelant"

	WeightsProfile new
		named: #UrbanHypothesisB;
		season: [ -0.1 -> 0.1 ];
		day: [ -0.01 -> 0.01 ];
		hour: [ -0.1 -> 0.1 ];
		exposure: [ -0.1 -> 0.1 ];
		occupants: [ 0 -> 0.05 ];
		income: [ -0.2 -> 0.2  ];
		ownership: [ -0.1 -> 0.1 ];
		awareness: [ -0.1 -> 0.1 ];
		temperature: [ -0.4 -> 0.4 ];
		humidity: [ -0.09 ->  0.04 ].