tests
testMatch
	
	|result|
	
	"It's faster.. Should further optimize (NFA/DFA): oldLex := '(1|2|3|4|5|6|7|8|9|0)+' asRegex.
newLex := (TotLexer new parse: '(1|2|3|4|5|6|7|8|9|0)+').
[1 to: 500000 do: [:i | newLex lexMatch: '324525 sfsdf' readStream]] timeToRun.
[1 to: 500000 do: [:i |oldLex matchesStreamPrefix: '324525 sfsdf' readStream]] timeToRun.
"

	result := (TotLexer new parse: 'asdf+aaa?|a+(abc|d)?').
	self assert: (result matchAtEnd: 'asdfasdf').
	self assert: (result matchAtEnd: 'asdf').
	self assert: (result matchAtEnd: 'asdfasdfaaa').
	self assert: (result match: 'asdfasdfa').
	self assert: (result matchAtEnd: 'asdfasdfb') not.
	self assert: (result matchAtEnd: 'asdg') not.
	self assert: (result matchAtEnd: 'asdfasdfa') not.
	self assert: (result match: 'aaaaa').
	self assert: (result matchAtEnd: 'aaaaag') not.
	self assert: (result matchAtEnd: 'aaaaabc') not. "ha ! -- should match as DFA/NFA"
	self assert: (result match: 'aaaaad'). 
	self assert: (result matchAtEnd: 'aaaaae') not.