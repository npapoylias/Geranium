instance creation
view

	"{  } exampleCompositeViz"

	^ CompositeViz new
		with: [:view | 
			{ 
				{ "first row" 
					"#PIE -> ({ #a -> 20 . #b -> 70 . #c -> 10 } 
						pieWithCaption: nil
						inView: view)."
					#ResidencePercentages -> report input residenceDistribution asPieWithCaption: nil inView: view.
					#HIST -> ([ |x| x := PMGaussianGenerator new. ((1 to: 100) collect: [:i | x next]) 
						frequencyHistogram: Color orange withCaption: nil inView: view] value).
					#CPLOT -> ([|x| x:= PMGaussianGenerator new. ((1 to: 100) collect: [:i | x next]) 
						connectedPlot: Color red withCaption: nil inView: view] value).
					#KIVIAT -> ({ #a -> (1 to: 3 ). #b -> (3 to: 6) . #c -> (6 to: 9 ). #d -> (9 to: 12) }
							kiviatForParameters: { #x . #y . #z .}
							withCaption: nil
							inView: view).
				}.
				{ "second row"
					"#RING -> ({ #a -> 20 . #b -> 70 . #c -> 10 } ringPieWithCaption: nil inView: view)."
					#IDHIST2 -> ((1 to: 10) identityHistogram: Color blue withCaption: nil inView: view).
					#BOX -> ({#a -> (1 to: 100) . #b -> (10 to: 200) . #c -> (30 to: 400)} 
						boxedPlot: Color green withCaption: nil inView: view).
					#DPLOT -> ([|x| x:= PMGaussianGenerator new. ((1 to: 100) collect: [:i | x next]) 
						dottedPlot: Color red withCaption: nil inView: view] value).
					#IDHIST -> ((1 to: 10) identityHistogram: Color yellow withCaption: nil inView: view)
				}
			}
		]