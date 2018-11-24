specs
open
	"self open"
	|instance|
	instance := self new.
	(instance openWithSpec; window) maximize.
	self splashLogo.