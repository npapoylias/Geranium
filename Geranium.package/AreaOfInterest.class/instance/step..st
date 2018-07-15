accessing
step: time
	|consumption ownConsumption awareConsumption |
	consumption := 0.
	ownConsumption := 0.
	awareConsumption := 0.
	self buildings do: [ :building | |s| 
		s := building step: time. 
		consumption := consumption + s first.
		ownConsumption := ownConsumption + s second.
		awareConsumption := awareConsumption + s third.
	].
	
	self historyOf: #ownConsumption add: ownConsumption.
	self historyOf: #awareConsumption add: awareConsumption.
	
	^ self 
			historyOf: #consumption
			add: consumption.