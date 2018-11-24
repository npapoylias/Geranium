specs
open
	"self open"
	|instance|
	instance := self new.
	Profile clearRegistry. Scenario clearRegistry.
	(instance openWithSpec; window) maximize.
	self splashLogo.