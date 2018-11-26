accessing
step: time

	"model 20 celcius and 50% humidity as comfortable for now"
	|consumption seasonalTrend dailyTrend hourlyTrend temperature humidity weightsProfile|
	
	consumption := self category median.
	weightsProfile := self area prefecture country weightsProfile.
	
	seasonalTrend := self area prefecture country seasonalProfile series at: time. 
	consumption := consumption + 
		(self consumptionForWeightInterval: weightsProfile season andTrend: seasonalTrend). 
	
	dailyTrend := self area prefecture country dailyProfile series at: time.
	consumption := consumption + 
		(self consumptionForWeightInterval: weightsProfile day andTrend: dailyTrend). 
	
	hourlyTrend := self area prefecture country hourlyProfile series at: time.
	consumption := consumption + 
		(self consumptionForWeightInterval: weightsProfile hour andTrend: hourlyTrend).
	 
	temperature := self area climateData temperature at: time.
	consumption := consumption + 
		(self consumptionForWeightInterval: weightsProfile temperature 
			forValue: temperature
			inMedianOptimumOf: -5 -> 35). "comfort in 20"
	
	humidity := self area climateData humidity at: time.
	consumption := consumption + 
		(self consumptionForWeightInterval: weightsProfile humidity 
			forValue: humidity
			inMedianOptimumOf: 0 -> 100). "comfort in 50"
			
	consumption := consumption + 
		(self consumptionForWeightInterval: weightsProfile exposure 
			forValue: self exposure
			inMinimumOptimumOf: 0 -> 6). 
	
	consumption := consumption + 
		(self consumptionForWeightInterval: weightsProfile occupants 
			forValue: self occupants size
			inMinimumOptimumOf: 1 -> 8). 		
					
	consumption := consumption + 
		(self consumptionForWeightInterval: weightsProfile income 
			forValue: self occupants income
			inMaximumOptimumOf: 12000 -> 200000).
	
	consumption := consumption + 
		(self consumptionForWeightInterval: weightsProfile ownership 
			forValue: self occupants ownership
			inBooleanOptimumOf: true).

	consumption := consumption + 
		(self consumptionForWeightInterval: weightsProfile awareness 
			forValue: (self occupants awareness = ConsumptionAware)
			inBooleanOptimumOf: true).
			
	^ consumption * surface "self 
			historyOf: #consumption
			add: consumption" 			
	 	
	