accessing
resolveUrbanProfiles
	
	|resolvedDict|
	resolvedDict := Dictionary new.
	urbanProfilesToPercentages categories do: [ :c | 
		 resolvedDict at: c put: (Profile retrieve: c).
	].
	^ resolvedDict