as yet unclassified
hourlyProfileForYears: y

	|series|
	series := OrderedCollection new.
	1 to: y*365*24 do: [ :i | series add: (self getHourlyTrendAtHour: i) ].
	^ series