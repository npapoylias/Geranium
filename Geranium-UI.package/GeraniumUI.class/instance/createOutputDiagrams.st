initialization
createOutputDiagrams
	outputDiagramsTotStructure  := GeraniumTotalStructureOutputDiagrams new: self report. 
	outputDiagramsSocialMicroClimate  := GeraniumSocialMicroClimateOutputDiagrams new: self report. 
	"outputDiagrams := RoassalModel new.
	outputDiagrams
		script: [ :v :c | 
			outputElectricityView := v. 
			self updateElectricityConsumption]."
