accessing
next

	|categoriesToSample|
	categoriesToSample := OrderedCollection new.
	self booleanDistributionOfProbabilities
		withIndexDo: [ :bd :i | 
				bd next ifTrue: [ categoriesToSample add: (categories at: i) ]
		].
	^ categoriesToSample 
			ifEmpty: [ self next ] 
			ifNotEmpty: [ categoriesToSample at: (self aRandomSamplingIndexFrom: 1 to: categoriesToSample size) ]