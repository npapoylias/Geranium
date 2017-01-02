accessing
withRec: aRuleCollection

	aRuleCollection do: [ :rule | 
		self at: rule name put: (rule grammar: self).
		self withRec: rule tempRules "if any"
	].
