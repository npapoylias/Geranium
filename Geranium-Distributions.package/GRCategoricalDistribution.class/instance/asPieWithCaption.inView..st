accessing
asPieWithCaption: aCaption inView: aView

	^ (categories collectWithIndex: [ :c :index | c -> (probabilities at: index) ])
			pieWithCaption: aCaption
			inView: aView