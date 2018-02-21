initialization
testExample

	|s areaOfInterest report categories minAvgExpectedConsumptionPerYear maxAvgExpectedConsumptionPerYear avgConsumptionPerYear | 
	"min/max for non-hoping categories"

	s := GeraniumSimulation new
			for: #ScenarioA;
			run.
			
	areaOfInterest := s areaOfInterest.
	report := s report.

	categories := (areaOfInterest residences collect: [ :r | r category ]) asSet.
	minAvgExpectedConsumptionPerYear := (categories collect: [ :c | c yearlyInterval key ]) min.
	maxAvgExpectedConsumptionPerYear := (categories collect: [ :c | c yearlyInterval value ]) max.
	avgConsumptionPerYear := (areaOfInterest historyOf: #consumption) sum / areaOfInterest numberOfResidences.
	Transcript 
		show: categories; cr;
		show: minAvgExpectedConsumptionPerYear; cr;
		show: maxAvgExpectedConsumptionPerYear; cr;
		show: avgConsumptionPerYear; cr. 
	self assert: avgConsumptionPerYear >= minAvgExpectedConsumptionPerYear.
	self assert: avgConsumptionPerYear <= maxAvgExpectedConsumptionPerYear.
	
	^ (areaOfInterest -> report) inspect