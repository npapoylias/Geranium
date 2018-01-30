tests
HouseTypeA

	UrbanProfileForHouse new 
		named: #HouseTypeA;
		surface: [90.0 -> 130.0];
		exposure: (5 ~ 1) | [0 -> 5]; 
		occupantClass: Family; "{Family . Couple . SingleAdult} % {0.10 . 0.50 . 0.40};"
		numberOfChildren: [1 -> 3]; "valid only for family"
		income: (72000.0 ~ 10000) | [36000.0 -> 80000];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {0.15 . 0.85};
		ownership: true % 60 
		
		