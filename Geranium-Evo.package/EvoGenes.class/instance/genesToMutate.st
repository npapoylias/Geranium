as yet unclassified
genesToMutate
	|generator|
	generator := [ 1 -> self geneSize ] asRangedDistribution.
	^ (1 to: (self geneSize * self mutationPercentage) rounded) collect: [:i |  generator next ]