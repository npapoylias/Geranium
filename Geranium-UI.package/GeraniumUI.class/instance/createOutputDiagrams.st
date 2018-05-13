initialization
createOutputDiagrams
	outputDiagrams := RoassalModel new.
	outputDiagrams
		script: [ :v :c | 
			outputElectricityView := v. "can probably get it from outputDiagrams"
			"should compute it here -- not used by the viz yet"
			"(GeraniumReportVisualization new
				with: self report;
				inVerticalExampleView: v) setCanvas: c"
			self updateElectricityConsumption] "hack"