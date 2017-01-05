accessing
with: aRuleCollection

	self withRec: aRuleCollection.
	self values do: [ :v | v preComputeDirectRefs ].
	self valuesDo: [ :rule | rule firsts ]. "lazy compute firsts now
	that all rules are in place and before parsing"