visualization
updateElectricityConsumption
	| consumptionHistory deviationDataPoints totalsHistogram consumptionHistoryOfBuildingProfiles buildingProfiles|
	
	min := step < 100 ifTrue: [1] ifFalse: [(step // 100) * 100]. 
	max := step + 1.
	
	consumptionHistory := (self report output consumptionHistoryOfBuildingProfiles copy 
		collect: [ :h | h copyFrom: min to: max ]) 
		addFirst: (self report output consumptionHistory copyFrom: min to: max).
	deviationDataPoints := consumptionHistory.	"should compute it here -- not used by the viz yet"
	self
		deviationGraphIn: outputElectricityView 
		for: consumptionHistory
		and: deviationDataPoints
		using: Color distinctTenStrongColors.
	"asHistogram: aColor withCaption: aString inView: aView describing: anotherCollection"