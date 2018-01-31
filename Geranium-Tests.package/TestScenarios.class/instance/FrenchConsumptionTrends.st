tests
FrenchConsumptionTrends

	TrendsProfile new
		named: #FrenchConsumptionTrends;
		seasonal: { 
			#Winter -> 1. 
			#Spring -> -0.2. 
			#Fall -> -0.1. 
			#Summer -> 1
		};	daily: {  
			#Monday -> 0.8.
			#Tuesday -> 0.8.
			#Wednesday -> 0.8.
			#Thursday -> 0.8.
			#Friday -> 0.9.
			#Saturday -> 1.
			#Sunday -> 1.
		}; hourly: {  
			#Midnight -> { -1 . -1 . -1 . -1 . -1 . -1 . -0.5 }.
			#Morning -> { 1 . 1 . 1 . 0.5 . 0.5 . 1 }.
			#Afternoon -> { 0.5 . 0.5 . 0.5 . 0.5 . 0.5 }.
			#Night -> { 1 . 1 . 1 . 1 . 1 . 1 }
		}.
		
		