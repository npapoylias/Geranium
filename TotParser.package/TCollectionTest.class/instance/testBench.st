tests
testBench
	|t o|
	t := self classToTest new.
	o := OrderedCollection new.

	Transcript show:
		([1 to: 200000 do: [:i | OrderedCollection new]] timeToRun /
		[1 to: 200000 do: [:i |  self classToTest new ]] timeToRun) asFloat; cr.

	Transcript show:
		([1 to: 200000 do: [:i | o add: i ]] timeToRun /
		[1 to: 200000 do: [:i | t add: i ]] timeToRun) asFloat; cr.

	Transcript show:
		([1 to: 200000 do: [:i | o at: i ]] timeToRun /
		[1 to: 200000 do: [:i | t at: i ]] timeToRun) asFloat; cr.

	Transcript show:
		([1 to: 200000 do: [:i | o at: i put: i ]] timeToRun /
		[1 to: 200000 do: [:i | t at: i put: i ]] timeToRun) asFloat; cr.

	Transcript show: 
		([1 to: 200000 do: [:i | o at: i ifAbsent: [  ] ]] timeToRun /
		[1 to: 200000 do: [:i | t at: i ifAbsent: [  ] ]] timeToRun) asFloat; cr.
	
	Transcript show: 
		([1 to: 2000 do: [:i | o removeIndex: 1]] timeToRun /
		[1 to: 2000 do: [:i | t removeIndex: 1 ]] timeToRun) asFloat; cr.