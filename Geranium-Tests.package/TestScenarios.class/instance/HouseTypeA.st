tests
HouseTypeA

	UrbanProfileForHouses new 
		named: #HouseTypeA;
		surface: [50.0 -> 80];
		exposure: (5 ~ 1) | [0 -> 5]; 
		occupantClass: Family; 
		numberOfChildren: [1 -> 3];
		income: (72000.0 ~ 10000) | [36000.0 -> 80000];
		awareness: ConsumptionAware;
		ownership: true % 60 
		
		