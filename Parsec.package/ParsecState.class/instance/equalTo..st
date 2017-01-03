as yet unclassified
equalTo: anotherState

	^ rule == anotherState rule
	and: [rightHandIndex == anotherState rightHandIndex 
	and: [dotPosition == anotherState dotPosition
	and: [ from == anotherState from 
	and: [ to == anotherState to ]]]]