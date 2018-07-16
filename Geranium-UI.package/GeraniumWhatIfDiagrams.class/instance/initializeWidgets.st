initialization
initializeWidgets

	temperature := 0.
	self createScatterPlot.
	self createPie.
	self createBarStack.
	self createDPESlider.
	self createAwarenessSlider.
	self createTemperatureSlider.
	applyButton := self newButton label: 'Apply Changes !'"; icon: (self appIcon: #apply)"; action: [ ].