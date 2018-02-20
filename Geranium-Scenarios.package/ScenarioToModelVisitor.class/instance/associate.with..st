as yet unclassified
associate: aScenarioEntity with: modelEntity

	(scenarioToModelDict 
		at: aScenarioEntity 
		ifAbsent: [ scenarioToModelDict at: aScenarioEntity put: OrderedCollection new ])
		add: modelEntity.
		
	(modelToScenarioDict 
		at: modelEntity 
		ifAbsent: [ modelToScenarioDict at: modelEntity put: OrderedCollection new ])
		add: aScenarioEntity. 