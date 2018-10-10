visiting
visitUrbanProfileForAppartmentBlock: aUrbanProfileForAppartmentBlock

	|dimensions appartmentDistribution resolvedAppartmentProfiles floors corridors appartmentsPerCorridor building |

	building := AppartmentBlock new.
	building dimensions: 
		(dimensions := aUrbanProfileForAppartmentBlock dimensions).
	floors := dimensions first.
	corridors := dimensions second.
	appartmentsPerCorridor := dimensions third.
	appartmentDistribution := aUrbanProfileForAppartmentBlock appartmentPercentages.
	resolvedAppartmentProfiles := aUrbanProfileForAppartmentBlock resolvedAppartmentProfiles.
	 
	1 to: floors do: [ :f |  
		1 to: corridors do: [ :c | 
			1 to: appartmentsPerCorridor do: [ :a | |appartment|
				building 
					add: (appartment := self visitNode: (resolvedAppartmentProfiles at: appartmentDistribution next))
					at: (f floors: c corridors: a appts)
				"updates with exposure, block etc..."
			]	
		]	
	].
	
	self associate: aUrbanProfileForAppartmentBlock with: building.
	
	^ building