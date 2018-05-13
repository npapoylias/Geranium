visualization
updateElectricityConsumption
	| consumptionHistory deviationDataPoints showMin showMax |
	
	showMin := step < 100 ifTrue: [1] ifFalse: [(step // 100) * 100]. 
	showMax := step + 1.
	
	consumptionHistory := (self report output consumptionHistoryOfBuildingProfiles values copy asOrderedCollection
		collect: [ :h | h copyFrom: showMin to: showMax ]) 
		addFirst: (self report output consumptionHistory copyFrom: showMin to: showMax); yourself.
	deviationDataPoints := consumptionHistory.	"should compute it here -- not used by the viz yet"
	
	outputElectricityView cleanAll.
	CompositeViz new
		with: [:view | 
			{ 
				{
					#'Cosnumption-Per-100h' -> self
						deviationGraphIn: view 
						for: consumptionHistory
						and: deviationDataPoints
						using: Color distinctTenStrongColors.
					#TotalConsumption -> (consumptionHistory collect: [:h | h cumsum])
						asHistogram: Color blue 
						withCaption: 'Totals' 
						inView: view 
						describing: ((self report output buildingProfiles 
											collect: [ :p | p name asString ]) addFirst: 'Total'; yourself).
				}
			}
		] inView: outputElectricityView focusing: 0.9.	
		outputElectricityView signalUpdate.
		
		^ outputElectricityView.
	"asHistogram: aColor withCaption: aString inView: aView describing: anotherCollection"