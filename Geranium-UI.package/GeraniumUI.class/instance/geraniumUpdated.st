examples
geraniumUpdated

	StatisticalScenario new 
		named: #Geranium;
		coordinates: (46.16352961038194 @ -1.1302614212036133) 
		-> (46.166851083597415 @ -1.1267745494842527);
		totalNumberOfBuildings: 46; "#determinedByMap;"
		totalNumberOfResidences: 87; "proxy of 99 -> proxy 186 (final number)"
		residencePercentages:{  "will affect exposure -- beware of proxy/structure"
			#SmallRenovatedHlmBlock."(3-4)x3"
			#LargeRenovatedHlmBlock."(5-7)x4"
			#SmallNewHlmBlock."3x2"
			#LargeNewHlmBlock."19x1"
			#HLMHousing."1x11"
			#SocialHousing."1x9"
			#PrivateHousing "1x16"
		} % { 6.52 . 8.695 . 4.34 . 2.17 . 23.91 . 19.56 . 34.78 }; "Percentages 0-100"
		climateProfile: #LaRochelleAverage;
		trendsProfile: #FrenchConsumptionTrends;
		weightsProfile: #StEloiHypothesis;
		years: 1.		
		
	UrbanProfileForAppartmentBlock new
		named: #SmallRenovatedHlmBlock;
		dimensions: (1 x: 2 x: 2);"will affect exposure -- beware of proxy/structure"
		appartmentPercentages: {  
			#HLMRenovated.
		} % { 1.0 }.
		
	UrbanProfileForAppartmentBlock new
		named: #LargeRenovatedHlmBlock;
		dimensions: (3 x: 1 x: 2);
		appartmentPercentages: {  
			#HLMRenovated.
		} % { 1.0 }.
		
	UrbanProfileForAppartmentBlock new
		named: #SmallNewHlmBlock;
		dimensions: (1 x: 1 x: 3);
		appartmentPercentages: {  
			#HLMNew.
		} % { 1.0 }.
	
	UrbanProfileForAppartmentBlock new
		named: #LargeNewHlmBlock;
		dimensions: (4 x: 1 x: 5);"Floors, Couloir, Residences/Couloir"
		appartmentPercentages: {  
			#HLMNew.
		} % { 1.0 }.
		
	
		
	UrbanProfileForAppartment new 
		named: #HLMRenovated;
		category: {DPEB . DPEC} % {0.6 . 0.4};"Survey ~= 50% BBC, 30% Non-BBC (DPE?), 20% (NSP)"
		surface: [50->115];
		occupantClass: {SingleAdult . Couple . Family} % {0.125 . 0.5 . 0.375}; "1, 2, >2"
		numberOfChildren: [1 -> 4]; "valid only for family / For >2"
		income: [1150.0*12 -> 4000.0*12];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {0.3125 . 0.6875};
		ownership: false % 100.
		
	UrbanProfileForAppartment new 
		named: #HLMNew;
		category: {DPEA . DPEB} % {0.6 . 0.4};
		surface: [48->98];
		occupantClass: {SingleAdult . Couple . Family} % {0.4210 . 0.2105 . 0.3684};
		numberOfChildren: [1 -> 3]; "valid only for family"
		income: [1150.0*12 -> 3000.0*12];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {0.3158 . 0.6841};
		ownership: false % 100.
		
	UrbanProfileForHouse new 
		named: #HLMlHousing;
		category: {DPEB . DPEC} % {0.6 . 0.4};
		surface: [47.0 -> 92.0];
		exposure: (3 ~ 1) | [0 -> 5]; 
		occupantClass: {SingleAdult . Couple . Family} % {0.1818. 0.2727 . 0.4545}; 
		numberOfChildren: [1 -> 4]; 
		income: [1150.0*12 -> 3000.0*12];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {0.1818 . 0.8182};
		ownership: true % 100.
	
	UrbanProfileForHouse new 
		named: #SocialHousing;
		category: {DPEB . DPEC} % {0.6 . 0.4};
		surface: [60.0 -> 87.0];
		exposure: (3 ~ 1) | [3 -> 5]; 
		occupantClass: {SingleAdult . Couple . Family} % {0.4444. 0.0 . 0.5556}; 
		numberOfChildren: [1 -> 2]; 
		income: [1150.0*12 -> 3000.0*12];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {0.3333 . 0.6667};
		ownership: true % 100.
	
	UrbanProfileForHouse new 
		named: #PrivateHousing;
		category: {DPEB . DPEC} % {0.6 . 0.4};
		surface: [80.0 -> 160.0];
		exposure: (3 ~ 1) | [0 -> 5]; 
		occupantClass: {SingleAdult . Couple . Family} % {0.1875. 0.1250 . 0.3125}; 
		numberOfChildren: [1 -> 2]; 
		income: [1150.0*12 -> 4000.0*12];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {0.6875 . 0.3125};
		ownership: true % 100.	
	
	ClimateProfile new "4 Season"
		named: #LaRochelleAverage; 
		medianTemperature: (13.25 ~ 1.5) | [0 -> 32]; 
		seasonalTemperatureVariation: 2.0;
		medianHumidity: (81.16 ~ 4.05) | [0 -> 100];
		seasonalHumidityVariation: 2. 
		
	TrendsProfile new
		named: #FrenchConsumptionTrends;
		seasonal: { 
			#Winter -> 0.1. 
			#Spring -> 1. 
			#Fall -> -1. 
			#Summer -> 0.1.
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
		
	WeightsProfile new "Explorative Model: Education/Building Hypothesis"
	
		named: #EmpiricHypothesisA;
"50%"
		temperature: [ -0.4 -> 0.4 ];  "30%"
	   	humidity: [ -0.09 ->  0.04 ]; "15%"
	   	exposure: [ -0.1 -> 0.1 ];  "5%"

"25%"
		occupants: [ 0 -> 0.15 ]; "10%"
		income: [ -0.05 -> 0.05  ]; "5%"
		awareness: [ -0.1 -> 0.1 ]; "5%"
		ownership: [ -0.05 -> 0.05 ]; "5%"

"25%"
		day: [ -0.01 -> 0.01 ];  "10%"
		hour: [ -0.1 -> 0.1 ]; "10%"
		season: [ -0.2 -> 0.2 ].	"5%"
	