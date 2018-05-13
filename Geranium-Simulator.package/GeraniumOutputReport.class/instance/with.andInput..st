instance creation
with: anAreaOfInterest andInput: visitor
	inputVisitor := visitor.
	areaOfInterest := anAreaOfInterest.
	categories := (areaOfInterest residences collect: [ :r | r category ]) asSet.
	totalSurface := (areaOfInterest residences collect: [ :r | r surface ]) sum.
	minAvgExpectedConsumptionPerYear := (categories collect: [ :c | c yearlyInterval key ]) min * totalSurface.
	maxAvgExpectedConsumptionPerYear := (categories collect: [ :c | c yearlyInterval value ]) max * totalSurface.
	consumptionHistory := areaOfInterest historyOf: #consumption.
	consumptionHistoryOfBuildings := Dictionary new.
	areaOfInterest buildings do: [ :b | consumptionHistoryOfBuildings at: b put: (b historyOf: #consumption) ].
	avgConsumptionPerYear := consumptionHistory sum.
	self calculateConsumptionPerBuildingProfile.
	Transcript
		show: categories; cr;
		show: minAvgExpectedConsumptionPerYear; cr;
		show: maxAvgExpectedConsumptionPerYear; cr;
		show: avgConsumptionPerYear; cr