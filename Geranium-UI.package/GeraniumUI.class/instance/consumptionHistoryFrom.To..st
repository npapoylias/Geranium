visualization
consumptionHistoryFrom: showMin To: showMax
	^ (consumptionHistory ifNil: [  
		consumptionHistory := 
			self report output consumptionHistoryOfBuildingProfiles values copy asOrderedCollection 
				addFirst: (self report output consumptionHistory).
	]) collect: [ :h | h copyFrom: showMin to: showMax ]