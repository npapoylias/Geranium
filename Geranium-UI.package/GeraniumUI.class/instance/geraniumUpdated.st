examples
geraniumUpdated

	"Updated Residence Proxy ++ Initial Analysis,
	natural percentages, x:x: to floors etc, DPE
	and weights"

	StatisticalScenario new 
		named: #Geranium;
		coordinates: (46.16352961038194 @ -1.1302614212036133) 
		-> (46.166851083597415 @ -1.1267745494842527);
		totalNumberOfBuildings: 46; "#determinedByMap;"
		totalNumberOfResidences: 186; "87;" "proxy of 99 (87 on record) -> proxy 186 (final number)"
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
		weightsProfile: #EmpiricHypothesisA;
		years: 1.		
		
	UrbanProfileForAppartmentBlock new
		named: #SmallRenovatedHlmBlock;
		dimensions: (1 floors: 2 corridors: 2 appts);"will affect exposure -- beware of proxy/structure"
		appartmentPercentages: {  
			#HLMRenovated.
		} % { 100.0 }.
		
	UrbanProfileForAppartmentBlock new
		named: #LargeRenovatedHlmBlock;
		dimensions: (3 floors: 1 corridors: 2 appts);
		appartmentPercentages: {  
			#HLMRenovated.
		} % { 100.0 }.
		
	UrbanProfileForAppartmentBlock new
		named: #SmallNewHlmBlock;
		dimensions: (1 floors: 1 corridors: 3 appts);
		appartmentPercentages: {  
			#HLMNew.
		} % { 100.0 }.
	
	UrbanProfileForAppartmentBlock new
		named: #LargeNewHlmBlock;
		dimensions: (4 floors: 1 corridors: 5 appts);"Floors, Couloir, Residences/Couloir"
		appartmentPercentages: {  
			#HLMNew.
		} % { 100.0 }.
			
	UrbanProfileForAppartment new 
		named: #HLMRenovated;
		category: DPEB;"Survey ~= 50% BBC, 30% Non-BBC (DPE?), 20% (NSP)"
		surface: [50->115];
		occupantClass: {SingleAdult . Couple . Family} % {12.5 . 50.0 . 37.5}; "1, 2, >2"
		numberOfChildren: [1 -> 4]; "valid only for family / For >2"
		income: [(1150.0*12) -> (4000.0*12)];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {31.25 . 68.75};
		ownership: false % 100.
		
	UrbanProfileForAppartment new 
		named: #HLMNew;
		category: DPEA;
		surface: [48->98];
		occupantClass: {SingleAdult . Couple . Family} % {42.10 . 21.05 . 36.84};
		numberOfChildren: [1 -> 3]; "valid only for family"
		income: [(1150.0*12) -> (3000.0*12)];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {31.58 . 68.41};
		ownership: false % 100.
		
	UrbanProfileForHouse new 
		named: #HLMHousing;
		category: DPEA;
		surface: [47.0 -> 92.0];
		exposure: (3 ~ 1) | [0 -> 5]; 
		occupantClass: {SingleAdult . Couple . Family} % {18.18. 27.27 . 45.45}; 
		numberOfChildren: [1 -> 4]; 
		income: [(1150.0*12) -> (3000.0*12)];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {18.18 . 81.82};
		ownership: true % 100.
	
	UrbanProfileForHouse new 
		named: #SocialHousing;
		category: {DPED . DPEE} % {60.0 . 40.0};
		surface: [60.0 -> 87.0];
		exposure: (3 ~ 1) | [3 -> 5]; 
		occupantClass: {SingleAdult . Couple . Family} % {44.44. 0.0 . 55.56}; 
		numberOfChildren: [1 -> 2]; 
		income: [(1150.0*12) -> (3000.0*12)];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {33.33 . 66.67};
		ownership: true % 100.
	
	UrbanProfileForHouse new 
		named: #PrivateHousing;
		category: {DPED . DPEE} % {60.0 . 40.0};
		surface: [80.0 -> 160.0];
		exposure: (3 ~ 1) | [0 -> 5]; 
		occupantClass: {SingleAdult . Couple . Family} % {18.75. 12.50 . 31.25}; 
		numberOfChildren: [1 -> 2]; 
		income: [(1150.0*12) -> (4000.0*12)];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {68.75 . 31.25};
		ownership: true % 100.	
	
	ClimateProfile new "4 Season"
		named: #LaRochelleAverage; 
		medianTemperature: (13.25 ~ 1.5) | [0 -> 32]; 
		seasonalTemperatureVariation: 2.0;
		medianHumidity: (81.16 ~ 4.05) | [0 -> 100];
		seasonalHumidityVariation: 2. 
		
	TrendsProfile new "Q2: National/Regional or Localised ??"
		named: #RegionalConsumptionTrends;"Comportement Attendue"
		seasonal: { 
			#Winter -> 0.1. 
			#Spring -> 1. 
			#Fall -> -1. 
			#Summer -> 0.1.
		};	daily: {  "E.g for local behavior: Lunch-time @ home vs Paris (lunch-time outside)"
			#Monday -> 0.7."if st-eloi: 0.8 from Mon-Fri"
			#Tuesday -> 0.7."if st-eloi: 0.8 from Mon-Fri"
			#Wednesday -> 0.8."enfants"
			#Thursday -> 0.7.
			#Friday -> 0.8."end office hours"
			#Saturday -> 1.
			#Sunday -> 1.
		}; hourly: {  "Normalize this between -1 and 1"
			#Midnight -> {-0.4 . -0.4 . -0.4 . -0.4 . -0.4 . -0.4 . -0.4}."00:00 - 06:00" "Midnight=Night"
			#Morning -> { 0.6 . 0.6 . 0.6 . 0.0 . 0.0 . 0.0 }."07:00 - 12:00"
			#Afternoon -> { 0.0 . 0.0 . 0.0 . 0.0 . 0.0 }."13:00 - 17:00"
			#Night -> { 1 . 1 . 1 . 1 . 1 . 0.0 }"18:00-23:00" "Night=Evening"
		}.
	
	"Q1: DPE overpass ??" "What-If indicators in the screen + dpeA (or awareness, 
	or climate) // Figure, ReferenceBase Scenario/Default" "Kiviat inside GIS plot"
	WeightsProfile new "Explorative Model: Education/Building Hypothesis"
	
		named: #EmpiricHypothesisA;
"50%"
		temperature: [ -0.3 -> 0.3 ];  "30%"
	   	humidity: [ -0.15 ->  0.15 ]; "15%"
	   	exposure: [ -0.1 -> 0.1 ];  "5%"

"25%"
		occupants: [ 0 -> 0.10 ]; "10%"
		income: [ -0.05 -> 0.05  ]; "5%"
		awareness: [ -0.05 -> 0.05 ]; "5%"
		ownership: [ -0.5 -> 0.5 ]; "5%"

"25%"
		day: [ -0.10 -> 0.10 ];  "10%"
		hour: [ -0.10 -> 0.10 ]; "10%"
		season: [ -0.05 -> 0.05 ].	"5%"
	
		WeightsProfile new "Explorative Model: Education/Building Hypothesis"
	
		named: #EmpiricHypothesisExceedingDPE;
"50%"
		temperature: [ -0.3 -> 0.3 ];  "30%"
	   	humidity: [ -0.15 ->  0.15 ]; "15%"
	   	exposure: [ -0.1 -> 0.1 ];  "5%"

"25%"
		occupants: [ 0 -> 0.10 ]; "10%"
		income: [ -0.05 -> 0.05  ]; "5%"
		awareness: [ -0.05 -> 0.05 ]; "5%"
		ownership: [ -0.5 -> 0.5 ]; "5%"

"25%"
		day: [ -0.10 -> 0.10 ];  "10%"
		hour: [ -0.10 -> 0.10 ]; "10%"
		season: [ -0.05 -> 0.05 ].	"5%"