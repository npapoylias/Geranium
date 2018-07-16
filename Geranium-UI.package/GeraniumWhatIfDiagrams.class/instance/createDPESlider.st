initialization
createDPESlider

	dpeASlider := (GeraniumSlider basicNew
			gradientRange: (359.9 to: 259.0 by: -0.1);
			initialize;
			model: self;
			quantum: 0.1;
			fontColor: Color black;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			min: 0;
			max: 100;"check limits on displaying ..."
			label: 'Set DPEA to: ' , (dpeAPercentage printShowingDecimalPlaces: 1) , '%'; 
			setValueSelector: #dpeAChanged:;
			getValueSelector: #dpeAPercentage;
			extent: 24 @ 24) asSpecAdapter.
		dpeASlider widget value: dpeAPercentage / 100.
		^ dpeASlider