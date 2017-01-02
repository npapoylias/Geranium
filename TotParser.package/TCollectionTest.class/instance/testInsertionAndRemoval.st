tests
testInsertionAndRemoval
	|t|
	
	"should break into multiple tests, this also tests at:, at:put: etc.."
	
	t :=  self classToTest new.
	1 to: 20000 do: [:i | "should also trigger grow"
		t add: i. 
		self assert: t last = i.
		self assert: t size = i.
	].
	t removeIndex: 20000.
	self assert: t last = 19999.
	self assert: t size = 19999.
	1 to: 19998 do: [:i | 
		t removeIndex: 1. 
		self assert: t first = (i + 1).
		self assert: t size = (19999 - i)
	].
	self assert: t last = 19999.
	self assert: t size = 1.