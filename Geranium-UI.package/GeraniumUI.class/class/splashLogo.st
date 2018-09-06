specs
splashLogo
	| logoMorph logoPath |
	logoPath := SmalltalkImage current lastImagePath asFileReference
		parent / 'splash-app-geranium-blue.png'.
	logoMorph := (ImageReadWriter formFromStream: logoPath readStream)
		asMorph.
	logoMorph openCenteredInWorld.
	[ (Delay forSeconds: 10) wait.
	logoMorph delete ] fork
	"show logo for 3 seconds, while loading the UI in parallel"