initialization
createDPESlider

	^ dpeASlider := (GeraniumSlider new
			model: self;
			quantum: 1;
			fontColor: Color white;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			min: 0;
			max: 100;"check limits on displaying ..."
			label: '0';"(dpePercentages at: #DPEA);" 
			setValueSelector: #dpeAChanged:;
			getValueSelector: #dpeAPercentage;
			extent: 24 @ 24) asSpecAdapter.