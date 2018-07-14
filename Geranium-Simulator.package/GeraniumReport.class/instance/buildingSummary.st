accessing
buildingSummary

	^ inputVisitor buildings collect: [ :b | 
			|n_residences n_occupants block_or_house type|
			n_residences := b numberOfResidences.
			n_occupants := b occupantSize.
			block_or_house := b class.
			type := (inputVisitor modelToScenarioDict at: b) first.
			{ n_residences . n_occupants . block_or_house . type }
		]