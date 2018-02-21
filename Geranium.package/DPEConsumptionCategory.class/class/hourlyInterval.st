accessing
hourlyInterval

	^ (self yearlyInterval key / (365.0*24)) -> (self yearlyInterval value / (365.0*24))