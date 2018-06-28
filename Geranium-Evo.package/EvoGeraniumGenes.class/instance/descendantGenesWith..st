accessing
descendantGenesWith: anotherSetOfGenes

	"single crossover point for the time beings"

	| descendandGenes |
	descendandGenes := self class new.

	1 to: self crossOverPoint do: [:i |
		descendandGenes weightsProfile instVarAt: i	 put: (weightsProfile instVarAt: i)
	].
	