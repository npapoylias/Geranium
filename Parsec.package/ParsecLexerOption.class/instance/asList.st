converting
asList

	^ { self class name. (self options collect: [ :option | option asList  ]) asArray } 