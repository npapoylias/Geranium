*Geranium-Distributions
% anotherCollection

	^ GRCategoricalDistribution new 
		categories: self;
		probabilities: (anotherCollection collect: [ :p | p / 100.0 ])