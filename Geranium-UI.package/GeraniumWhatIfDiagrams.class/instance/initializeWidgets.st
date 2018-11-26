initialization
initializeWidgets

	temperature := self report whatIf at: #temperature.
	oldTemperature := temperature.
	self createScatterPlot.
	self createPie.
	self createBarStack.
	self createDPESlider.
	self createAwarenessSlider.
	self createTemperatureSlider.
	applyButton := self newButton label: 'Apply Changes !'"; icon: (self appIcon: #apply)"; action: [ self applyChanges ].