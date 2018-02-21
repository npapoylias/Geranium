initialization
testExample

	|s areaOfInterest report|

	s := GeraniumSimulation new
			for: #ScenarioA;
			run.
			
	areaOfInterest := s areaOfInterest.
	report := s report.
	
	(areaOfInterest -> report) inspect