accessing
temperaturePlot

	^ self temperatureSeries connectedPlot: (Color red copy setAlpha: 0.1) step: 10
