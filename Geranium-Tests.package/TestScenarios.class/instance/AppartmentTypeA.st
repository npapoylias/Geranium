tests
AppartmentTypeA

	UrbanProfileForAppartment new 
		named: #AppartmentTypeA;
		surface: [50.0 -> 80.0];
		occupantClass: {SingleAdult . Couple . Family} % {60.0 . 30.0 . 10.0};
		numberOfChildren: [1 -> 3]; "valid only for family"
		income: (72000.0 ~ 10000) | [36000.0 -> 100000];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {40.0 . 60.0};
		ownership: true % 20 