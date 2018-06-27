visualization
updateElectricityConsumption
	| historyUpTillNow deviationDataPoints showMin showMax |
	showMin := step < 100
		ifTrue: [ 1 ]
		ifFalse: [ step // 100 * 100 ].
	showMax := step + 1.
	historyUpTillNow := self consumptionHistoryFrom: showMin To: showMax.
	deviationDataPoints := consumptionHistory.	"should compute it here -- not used by the viz yet"
	outputElectricityView cleanAll.
	CompositeViz new
		with: [ :view | 
			{
				{(#'Cosnumption-Per-100h'
					->
						(self
							deviationGraphIn: view
							for: historyUpTillNow
							and: deviationDataPoints
							using: Color distinctTenStrongColors))
				}.
				{(#TotalConsumption
					->
					((self consumptionHistoryCumSumAt: step + 1)
						asHistogram: Color blue
						withCaption: nil
						inView: view
						describing:
							((self report output buildingProfiles
								collect: [ :p | p first name asString ]) asOrderedCollection
								addFirst: 'Total';
								yourself)))	"scenarios per building is a collection -- fix !"
				 }
			} ]
		inView: outputElectricityView
		focusing: 1.0.
	outputElectricityView signalUpdate.
	^ outputElectricityView
	"asHistogram: aColor withCaption: aString inView: aView describing: anotherCollection"