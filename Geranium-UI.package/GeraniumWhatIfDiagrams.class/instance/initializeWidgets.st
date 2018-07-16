initialization
initializeWidgets

	self createScatterPlot.
	self createPie.
	self createBarStack.
	self createDPESlider.
	self createAwarenessSlider.
	self createTemperatureSlider.
	applyButton := self newButton aboutText: 'Apply'; icon: (self appIcon: #apply); 
		action: [ ].