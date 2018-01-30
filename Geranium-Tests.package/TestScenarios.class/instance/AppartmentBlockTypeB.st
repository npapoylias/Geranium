tests
AppartmentBlockTypeB

	UrbanProfileForAppartmentBlock new
		named: #AppartmentBlockTypeB;
		dimensions: (5 x: 2 x: 10);
		appartmentPercentages: {  
			#AppartmentTypeA.
			#AppartmentTypeB.
		} % { 0.5 . 0.5 }
		 