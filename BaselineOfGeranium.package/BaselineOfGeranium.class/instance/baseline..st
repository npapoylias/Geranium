baselines
"protocol: #baselines"

baseline: spec

	<baseline>

	spec for: #common do: [ 
		spec
			configuration: 'NeoJSON' with: [ 
				spec versionString: #stable; 
				repository: 'http://mc.stfx.eu/Neo/'];
			configuration: 'PolyMath' with: [ 
				spec version: #stable; 
				repository: 'http://smalltalkhub.com/mc/PolyMath/PolyMath/main']; 
			"Use NeoCSV directly instead" "baseline: 'DataFrame' with: [
      			spec repository: 'github://PolyMathOrg/DataFrame' ];"
			package: 'Geranium';
			package: 'Geranium-Distributions';
			package: 'Geranium-Scenarios';
			package: 'Geranium-UI';
			package: 'Geranium-Tests';
			package: 'Geranium-Simulator'
	]
