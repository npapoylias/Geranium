api
initializeWidgets
	step := 0.
	plot := RoassalModel new.
	plot
		script: [ :v :c | 
			outputView := v.
			self runFrameUpdateAndSchedulingProcess
		]