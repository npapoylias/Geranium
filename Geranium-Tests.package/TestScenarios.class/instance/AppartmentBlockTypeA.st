tests
AppartmentBlockTypeA

	UrbanProfileForAppartmentBlock new
		named: #AppartmentBlockTypeA;
		dimensions: (3 x: 4 x: 5);
		appartmentPercentages: {  
			#AppartmentTypeA.
			#AppartmentTypeB.
		} % { 0.2 . 0.8 }
		 