tests
AppartmentBlockTypeB

	UrbanProfileForAppartmentBlock new
		named: #AppartmentBlockTypeB;
		dimensions: (5 x: 2 x: 10);
		appartmentPercentages: {  
			#AppartmentTypeA.
			#AppartmentTypeB.
		} % { 50.0 . 50.0 }
		 