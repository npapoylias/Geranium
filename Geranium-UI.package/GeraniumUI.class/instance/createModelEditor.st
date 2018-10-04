initialization
createModelEditor

	modelEditor := GlamourPresentationModel new.
	modelEditor presentationClass: GTPlayground startOn: (GTPlayPage new saveContent: (self class >> #geraniumUpdate) sourceWithoutSelector; title: 'GeraniumDSL').