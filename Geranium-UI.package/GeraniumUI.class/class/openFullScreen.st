specs
openFullScreen
	"self openFullScreen"
	Profile clearRegistry. Scenario clearRegistry.
	(self new openWithSpec; window) window value openFullscreen.
	self splashLogo.