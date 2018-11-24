initialization
createDPESlider

	dpeBSlider := (GeraniumSlider basicNew
			gradientRange: (359.9 to: 259.0 by: -0.1);
			initialize;
			model: self;
			quantum: 0.1;
			fontColor: Color black;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			min: 0;
			max: 100 - dpeAPercentage;"check limits on displaying ..."
			label: 'Set DPEB to: ' , (dpeBPercentage printShowingDecimalPlaces: 1) , '%'; 
			setValueSelector: #dpeBChanged:;
			getValueSelector: #dpeBPercentage;
			extent: 24 @ 24) asSpecAdapter.
		dpeBSlider widget value: dpeBPercentage / 100.
		^ dpeBSlider