initialization
createTemperatureSlider

	^ temperatureSlider := (GeraniumSlider new
			model: self;
			quantum: 1;
			fontColor: Color white;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			min: 0;
			max: 5;"check limits on displaying ..."
			label: 'Increase by: 0';"(dpePercentages at: #DPEA);" 
			setValueSelector: #temperatureChanged:;
			getValueSelector: #temperature;
			extent: 24 @ 24) asSpecAdapter.