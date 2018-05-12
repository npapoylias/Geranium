initialization
createOutputDiagrams
	outputDiagrams := RoassalModel new.
	outputDiagrams
		script: [ :v :c | 
			(GeraniumReportVisualization new
				with: self report;
				inVerticalExampleView: v) setCanvas: c ]