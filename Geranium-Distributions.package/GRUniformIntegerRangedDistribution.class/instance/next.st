instance creation
next
	"rounded does not work well for edge values
	augment max by 1 and use floor:"
	^ ((super parentNext * (max + 1 - min)) + min) floor