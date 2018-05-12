visualization
updateElectricityConsumption
	| averageDataPoints deviationDataPoints |
	averageDataPoints := {(self report output consumptionHistory
		copyFrom: 1
		to: step + 1)}.
	deviationDataPoints := averageDataPoints.	"should compute it here -- not used by the viz yet"
	self
		deviationGraphIn: outputElectricityView 
		for: averageDataPoints
		and: deviationDataPoints
		using: Color distinctTenLightColors.
	outputElectricityView signalUpdate.