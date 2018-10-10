tests
AppartmentBlockTypeB

	UrbanProfileForAppartmentBlock new
		named: #AppartmentBlockTypeB;
		dimensions: (5 floors: 2 corridors: 10);
		appartmentPercentages: {  
			#AppartmentTypeA.
			#AppartmentTypeB.
		} % { 50.0 . 50.0 }
		 