as yet unclassified
reproduceWith: anotherIndividual

	^ self class new 
		genes: (genes descendantGenesWith: anotherIndividual genes)