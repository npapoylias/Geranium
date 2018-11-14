initialization
seed

	^ default ifNil: [ (seedGenerator next * 23024082348) rounded  ]