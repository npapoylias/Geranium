*Geranium-Distributions
frequenciesWithGroups: n ofRange: r
	| max f min ret numberOfGroups groupRange|
	numberOfGroups := n. 
	groupRange := r. "one of the two is nil and will be computed based on the other"
	f := Dictionary new.
	ret := Dictionary new.
	min := self min.
	max := self max.
	groupRange 
		ifNil: [ groupRange := (max - min) / numberOfGroups ]
		ifNotNil: [ numberOfGroups := ((max - min) / groupRange) ].
	self
		do: [ :i | 
			| b |
			b := ((i - min) / groupRange) floor.
			f at: b put: (f at: b ifAbsent: [ 0 ]) + 1 ].
	1 to: numberOfGroups + 1 do: [ :i | 
		ret
			at:
				((min + (i - 1)) * groupRange) asFloat
					-> (min + (i * groupRange)) asFloat
			put: (f at: i - 1 ifAbsent: 0) ].
	^ ret