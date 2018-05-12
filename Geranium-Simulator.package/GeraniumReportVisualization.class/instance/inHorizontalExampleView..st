instance creation
inHorizontalExampleView: aView

	"{  } exampleCompositeViz"

	^ CompositeViz new
		with: [:view | 
			{ 
				{ "first row" 
					"#PIE -> ({ #a -> 20 . #b -> 70 . #c -> 10 } 
						pieWithCaption: nil
						inView: view)."
					#ResidencePercentages -> (report input residenceDistribution 
						asPieWithCaption: 'Residence Types in Scenario' inView: view).
					"#KIVIAT -> ({ #a -> (1 to: 3 ). #b -> (3 to: 6) . #c -> (6 to: 9 ). #d -> (9 to: 12) }
							kiviatForParameters: { #x . #y . #z .}
							withCaption: nil
							inView: view)."
					#BlockDimensions -> (self appartmentBlockDimensions
							kiviatForParameters: { #Floors . #Corridors . #Appartments .}
							withCaption: 'Appartment Block Dimensions'
							inView: view).
						"#HIST -> ([ |x| x := PMGaussianGenerator new. ((1 to: 100) collect: [:i | x next]) 
						frequencyHistogram: Color orange withCaption: nil inView: view] value)."
					"self appartmentPercentagesHistogramsInView: view."
					"#CPLOT -> ([|x| x:= PMGaussianGenerator new. ((1 to: 100) collect: [:i | x next]) 
						connectedPlot: Color red withCaption: nil inView: view] value)."
					
				} deepFlatten.
			
			}
		] inView: aView focusing: 1.6