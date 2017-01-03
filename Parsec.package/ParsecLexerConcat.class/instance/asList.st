converting
asList

	^ { self class name. (self sequence collect: [ :item | item asList  ]) asArray } 