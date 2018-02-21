as yet unclassified
dailyProfileForYears: y

	|series|
	series := OrderedCollection new.
	1 to: y*365 do: [ :i | series add: (self getDailyTrendAtHour: i) ]