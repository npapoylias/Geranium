initialization
createAwarenessSlider

	awarenessSlider := (GeraniumSlider basicNew
			gradientRange: (259.9 to: 159.0 by: -0.1);
			initialize;
			model: self;
			quantum: 0.1;
			fontColor: Color black;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			min: 1;
			max: 99;"check limits on displaying ..."
			label: 'Set awareness to: ' , (awarenessPercentage printShowingDecimalPlaces: 1) , '%';
			setValueSelector: #awarenessChanged:;
			getValueSelector: #awarenessPercentage;
			extent: 24 @ 24) asSpecAdapter.
		awarenessSlider widget value: awarenessPercentage / 100.
		^ awarenessSlider 