tests
AppartmentTypeB

	"exposure: (5 ~ 1) | [0 -> 5];" "can be set but should be calculated according to location in the building" 

	UrbanProfileForAppartment new 
		named: #AppartmentTypeB;
		surface: [80.0 -> 110];
		occupantClass: {Family . Couple} % {0.50 . 0.40};
		numberOfChildren: [1 -> 3]; "valid only for family"
		income: (92000.0 ~ 15000) | [66000.0 -> 180000];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {0.10 . 0.90};
		ownership: true % 10 
		