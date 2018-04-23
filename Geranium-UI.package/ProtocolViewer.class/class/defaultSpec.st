specs
defaultSpec

	"self new openWithSpec"

	^ SpecColumnLayout composed
			add: #models; add: #api; add: #events;
			yourself