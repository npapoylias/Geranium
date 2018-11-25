accessing
consumptionHistory
	^ consumptionHistory
		ifNil: [ consumptionHistory := self report output
				consumptionHistoryOfBuildingProfiles values copy
				asOrderedCollection
				addFirst: self report output consumptionHistory;
				yourself.  ]