specs
defaultSpec

	"self new openWithSpec"

	^ SpecColumnLayout composed
			add: #label height: self toolbarHeight;
			add: #methods;
			yourself