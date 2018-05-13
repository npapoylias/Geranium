visualization
updateElectricityConsumption
	| consumptionHistory deviationDataPoints totalsHistogram showMin showMax |
	
	showMin := step < 100 ifTrue: [1] ifFalse: [(step // 100) * 100]. 
	showMax := step + 1.
	
	consumptionHistory := (self report output consumptionHistoryOfBuildingProfiles values copy asOrderedCollection
		collect: [ :h | h copyFrom: showMin to: showMax ]) 
		addFirst: (self report output consumptionHistory copyFrom: showMin to: showMax); yourself.
	deviationDataPoints := consumptionHistory.	"should compute it here -- not used by the viz yet"
	self
		deviationGraphIn: outputElectricityView 
		for: consumptionHistory
		and: deviationDataPoints
		using: Color distinctTenStrongColors.
	"asHistogram: aColor withCaption: aString inView: aView describing: anotherCollection"