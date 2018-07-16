initialization
createAwarenessSlider

	^ awarenessSlider := (GeraniumSlider basicNew
			gradientRange: (259.9 to: 159.0 by: -0.1);
			initialize;
			model: self;
			quantum: 1;
			fontColor: Color black;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			min: 0;
			max: 100;"check limits on displaying ..."
			label: 'Awareness: 0 %';"(dpePercentages at: #DPEA);" 
			setValueSelector: #awarenessChanged:;
			getValueSelector: #awarenessPercentage;
			extent: 24 @ 24) asSpecAdapter.