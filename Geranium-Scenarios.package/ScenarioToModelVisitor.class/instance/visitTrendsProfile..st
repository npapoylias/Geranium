visiting
visitTrendsProfile: aTrendsProfile

	^ Prefecture new
		country: (Country new
						hourlyProfile: (DailyConsumptionTrends new series: (aTrendsProfile hourlyProfileForYears: years));
						dailyProfile: (HourlyConsumptionTrends new series: (aTrendsProfile dailyProfileForYears: years));
						seasonalProfile: (SeasonalConsumptionTrends new series: (aTrendsProfile seasonalProfileForYears: years)))  