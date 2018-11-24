specs
open
	"self open"
	|instance|
	Profile clearRegistry. Scenario clearRegistry.
	instance := self new.
	(instance openWithSpec; window) maximize.
	self splashLogo.