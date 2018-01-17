baselines
baseline: spec

	<baseline>

	spec for: #common do: [ 
		spec
			configuration: 'NeoJson' with: [ 
				spec
					versionString: #stable;
					repository: 'https://github.com/svenvc/NeoJSON' ];
				yourself.
		spec
			package: 'Geranium';
			package: 'Geranium-UI';
			package: 'Geranium-Tests';
			package: 'Geranium-Simulator'
	]
