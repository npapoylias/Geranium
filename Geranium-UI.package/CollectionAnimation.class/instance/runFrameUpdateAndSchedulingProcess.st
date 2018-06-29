api
runFrameUpdateAndSchedulingProcess
	[ 
		[step < data size]
			whileTrue: [ 
				step := step + 1.
				self render.
				(Delay forMilliseconds: 500) wait. 
			]
	] fork 