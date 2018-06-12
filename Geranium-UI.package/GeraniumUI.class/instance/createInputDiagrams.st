initialization
createInputDiagrams
	inputDiagrams := GeraniumStructuralInputDiagrams new "passing initializers ?"
	"inputDiagrams := RoassalModel new.
	inputDiagrams
		script: [ :v :c | 
			(GeraniumReportVisualization new
				with: self report;
				inHorizontalExampleView: v) setCanvas: c ]"