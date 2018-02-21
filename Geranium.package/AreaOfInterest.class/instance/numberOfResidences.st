accessing
numberOfResidences

	^ (buildings collect: [ :b | b numberOfResidences ]) sum