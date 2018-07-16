initialization
createTemperatureSlider

	^ temperatureSlider := (GeraniumSlider basicNew
			gradientRange: (159.9 to: 0.0 by: -0.1);
			initialize;
			model: self;
			quantum: 1;
			fontColor: Color black;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			min: 0;
			max: 5;"check limits on displaying ..."
			label: 'Temp +0';"(dpePercentages at: #DPEA);" 
			setValueSelector: #temperatureChanged:;
			getValueSelector: #temperature;
			extent: 24 @ 24) asSpecAdapter.