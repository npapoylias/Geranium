visiting
visitUrbanProfileForAppartmentBlock: aUrbanProfileForAppartmentBlock

	|dimensions appartmentDistribution resolvedAppartmentProfiles floors corridors appartmentsPerCorridor building |

	building := AppartmentBlock new.
	floors := dimensions first.
	corridors := dimensions second.
	appartmentsPerCorridor := dimensions third.
	
	1 to: floors do: [ :f |  
		1 to: corridors do: [ :c | 
			1 to: appartmentsPerCorridor do: [ :a | 
				building add: (self visitNode: (resolvedAppartmentProfiles at: appartmentDistribution next)).
				"update with exposure, block etc..."
			]	
		]	
	].

	^ building