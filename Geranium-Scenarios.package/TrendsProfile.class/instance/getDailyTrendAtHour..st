as yet unclassified
getDailyTrendAtHour: anHour

	^ dailyCountryTrends values at: ((anHour / 24) ceiling % 7) + 1