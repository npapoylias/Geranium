initialization
testExample

	|report  | 
	"min/max for non-hoping categories"

	report := GeraniumSimulation new
			for: #ScenarioA;
			run.
			
	self assert: report output avgConsumptionPerYear >= report output minAvgExpectedConsumptionPerYear.
	self assert: report output avgConsumptionPerYear <= report output maxAvgExpectedConsumptionPerYear.
	
	^ report