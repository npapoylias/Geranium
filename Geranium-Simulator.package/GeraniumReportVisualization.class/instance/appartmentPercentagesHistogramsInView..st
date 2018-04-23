instance creation
appartmentPercentagesHistogramsInView: aView

	^ report input resolvedResidenceProfiles values
		select: [ :profile | profile class = UrbanProfileForAppartmentBlock]
		thenCollect: [ :profile | 
			(profile name , 'Composition') asSymbol -> 
				(profile appartmentPercentages identityHistogram: Color yellow withCaption: nil inView: aView)]