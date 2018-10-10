tests
AppartmentBlockTypeA

	UrbanProfileForAppartmentBlock new
		named: #AppartmentBlockTypeA;
		dimensions: (3 floors: 4 corridors: 5 appts);
		appartmentPercentages: {  
			#AppartmentTypeA.
			#AppartmentTypeB.
		} % { 20.0 . 80.0 }
		 