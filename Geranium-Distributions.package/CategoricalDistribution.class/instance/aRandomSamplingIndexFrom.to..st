accessing
aRandomSamplingIndexFrom: min to: max

	^ ((self randomSamplingGenerator next * (max - min)) + min) rounded