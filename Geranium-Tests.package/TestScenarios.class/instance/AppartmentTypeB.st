tests
AppartmentTypeB

	"exposure: (5 ~ 1) | [0 -> 5];" "can be set but should be calculated according to location in the building" 

	UrbanProfileForAppartment new 
		named: #AppartmentTypeB;
		surface: [80.0 -> 110];
		occupantClass: {Family . Couple} % {50.0 . 40.0};
		numberOfChildren: [1 -> 3]; "valid only for family"
		income: (92000.0 ~ 15000) | [66000.0 -> 180000];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {10.0 . 90.0};
		ownership: true % 10 
		