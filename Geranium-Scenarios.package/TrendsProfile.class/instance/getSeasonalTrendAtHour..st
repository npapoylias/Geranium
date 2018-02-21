as yet unclassified
getSeasonalTrendAtHour: anHour

	^ seasonalCountryTrends values at: ((anHour / ((365/4)*24)) ceiling % 4) + 1