accessing
exposureFor: aLocationWithinTheBlock

	|atFloor atCorridor appNumber exposure|

	"assume cubical architecture"

	exposure := 5. "Out of 6 = all sides including bottom for Venician houses ;)"

	atFloor := aLocationWithinTheBlock first.
	atCorridor := aLocationWithinTheBlock second.
	appNumber := aLocationWithinTheBlock third.
	
	atFloor < floors ifTrue: [ exposure := exposure - 1 ]. "Top is covered"
	(atCorridor > 1 and: [ atCorridor < corridors ]) "Middle Corridors"
		ifTrue: [ exposure := exposure - 2 ]
		ifFalse: [ exposure := exposure - 1 ]. "First and Last Corridor"
	(appNumber > 1 and: [ appNumber < appartmentsPerCorridor  ]) "Middle Appartments"
		ifTrue: [ exposure := exposure - 2 ]
		ifFalse: [ exposure := exposure - 1 ]. "First and Last appartements"
	exposure = 4 ifTrue: [self halt].
	Transcript show: exposure; cr.
	^ exposure
		
	