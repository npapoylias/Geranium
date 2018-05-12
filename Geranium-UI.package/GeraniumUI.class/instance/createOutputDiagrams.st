initialization
createOutputDiagrams
	outputDiagrams := RoassalModel new.
	outputDiagrams 
		script: [ :v :c | |averageDataPoints deviationDataPoints| 
			averageDataPoints := {self report output consumptionHistory copyFrom: 1 to: step + 1}.
			deviationDataPoints := averageDataPoints. "should compute it here -- not used by the viz yet"
			self deviationGraphIn: v for: averageDataPoints and: deviationDataPoints using: Color distinctTenLightColors.
			"(GeraniumReportVisualization new
				with: self report;
				inVerticalExampleView: v) setCanvas: c" ]