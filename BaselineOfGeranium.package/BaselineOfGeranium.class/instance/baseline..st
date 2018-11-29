baselines
"protocol: #baselines"

baseline: spec

	<baseline>

	spec for: #common do: [ 
		spec
			configuration: 'NeoJSON' with: [ 
				spec versionString: #stable; 
				repository: 'http://mc.stfx.eu/Neo/'];
			configuration: 'NeoCSV' with: [ 
				spec versionString: #stable; 
				repository: 'http://mc.stfx.eu/Neo/'];
			configuration: 'PolyMath' with: [ 
				spec version: #stable; 
				repository: 'http://smalltalkhub.com/mc/PolyMath/PolyMath/main'];
			"Use NeoCSV directly instead" "baseline: 'DataFrame' with: [
      			spec repository: 'github://PolyMathOrg/DataFrame' ];"
			package: 'Geranium-Distributions';
			package: 'Geranium-Tests';
			package: 'Geranium-Scenarios';
			package: 'Geranium';
			package: 'Geranium-Simulator';
			package: 'Geranium-UI'
	]
