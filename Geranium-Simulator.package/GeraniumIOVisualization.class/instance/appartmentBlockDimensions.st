instance creation
appartmentBlockDimensions

	^ report input resolvedResidenceProfiles
		select: [ :profile | profile class = UrbanProfileForAppartmentBlock]
		thenCollect: [ :profile | profile name -> profile dimensions]