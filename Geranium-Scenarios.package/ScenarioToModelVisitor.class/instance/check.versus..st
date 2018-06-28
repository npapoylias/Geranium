visiting
check: declared versus: total

	^ declared
			ifNil: [ true ]
			ifNotNil: [ total < declared ]