tests
testFullInternalApiScriptExtention

	StatisticalScenario new 
		named: #ScenarioB extending: #ScenarioA;
		totalNumberOfBuildings: [10 -> 100]; 
		residencePercentages: {
			#AppartmentBlockTypeA. 
			#AppartmentBlockTypeB. 
			#HouseTypeA
		} % { 20 . 20 . 60 };
		weightsProfile: #UrbanHypothesisB;
		years: [ 1 -> 3 ].
		
	WeightsProfile new
		named: #UrbanHypothesisB extending:#UrbanHypothesisA;
		income: [ -0.2 -> 0.2  ];
		ownership: [ -0.1 -> 0.1 ].