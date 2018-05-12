instance creation
with: anAreaOfInterest

	areaOfInterest := anAreaOfInterest.
	categories := (areaOfInterest residences collect: [ :r | r category ]) asSet.
	minAvgExpectedConsumptionPerYear := (categories collect: [ :c | c yearlyInterval key ]) min.
	maxAvgExpectedConsumptionPerYear := (categories collect: [ :c | c yearlyInterval value ]) max.
	consumptionHistory := areaOfInterest historyOf: #consumption.
	consumptionHistoryOfBuildings := Dictionary new.
	areaOfInterest buildings do: [ :b | consumptionHistoryOfBuildings at: b put: (b historyOf: #consumption) ]. 
	avgConsumptionPerYear := consumptionHistory sum / areaOfInterest numberOfResidences.
	Transcript 
		show: categories; cr;
		show: minAvgExpectedConsumptionPerYear; cr;
		show: maxAvgExpectedConsumptionPerYear; cr;
		show: avgConsumptionPerYear; cr. 
