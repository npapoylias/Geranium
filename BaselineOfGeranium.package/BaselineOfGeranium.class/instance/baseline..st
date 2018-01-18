baselines
baseline: spec

	<baseline>

	spec for: #common do: [ 
		spec
			configuration: 'NeoJSON' with: [ 
				spec
					versionString: #stable;
					repository: 'http://mc.stfx.eu/Neo/' ];
				yourself.
		spec
			package: 'Geranium';
			package: 'Geranium-Scenarios';
			package: 'Geranium-UI';
			package: 'Geranium-Tests';
			package: 'Geranium-Simulator'
	]
