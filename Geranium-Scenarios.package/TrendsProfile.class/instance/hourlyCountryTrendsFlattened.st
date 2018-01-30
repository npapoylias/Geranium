accessing
hourlyCountryTrendsFlattened

	^ hourlyCountryTrendsFlattened ifNil: [  
			hourlyCountryTrendsFlattened := hourlyCountryTrends values flatten
		]