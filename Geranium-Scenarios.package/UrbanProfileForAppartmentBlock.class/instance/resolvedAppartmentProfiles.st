accessing
resolvedAppartmentProfiles
	|resolvedDict|
	resolvedDict := Dictionary new.
	appartmentProfilesToPercentages categories do: [ :c | 
		 resolvedDict at: c put: (Profile retrieve: c).
	].
	^ resolvedDict