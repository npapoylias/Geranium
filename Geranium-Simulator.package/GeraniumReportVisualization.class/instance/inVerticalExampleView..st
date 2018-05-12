instance creation
inVerticalExampleView: aView

	"{  } exampleCompositeViz"

	^ CompositeViz new
		with: [:view | 
			{ 
				{ "first row" 
					#IDHIST2 -> ((1 to: 10) identityHistogram: Color blue withCaption: nil inView: view).
				}.
				{ "second row"
					"#RING -> ({ #a -> 20 . #b -> 70 . #c -> 10 } ringPieWithCaption: nil inView: view)."
					#BOX -> ({#a -> (1 to: 100) . #b -> (10 to: 200) . #c -> (30 to: 400)} 
						boxedPlot: Color green withCaption: nil inView: view).
					
				}.
				"{ 
					#DPLOT -> ([|x| x:= PMGaussianGenerator new. ((1 to: 100) collect: [:i | x next]) 
						dottedPlot: Color red withCaption: nil inView: view] value).
				 
				}.
				{  
					#IDHIST -> ((1 to: 10) identityHistogram: Color yellow withCaption: nil inView: view)
				}"
			}
		] inView: aView focusing: 1.4