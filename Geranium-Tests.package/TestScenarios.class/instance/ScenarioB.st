tests
ScenarioB

	StatisticalScenario new: #ScenarioB extending: #ScenarioA;
		totalNumberOfBuildings: 1000;
		residencePercentages:{  
			0.2 -> #AppartmentBlockTypeA.
			0.2 -> #AppartmentBlockTypeB.
			0.6 -> #HouseTypeA}.