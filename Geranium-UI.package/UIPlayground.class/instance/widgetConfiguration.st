setup
widgetConfiguration
	screen label: 'Please give us your feedback.'.
	buttonHappy
		label: 'Happy';
		icon: (self iconNamed: #thumbsUp).
	buttonNeutral
		label: 'Neutral';
		icon: (self iconNamed: #user).
	buttonBad
		label: 'Bad';
		icon: (self iconNamed: #thumbsDown).
	registeredColorsList 
		items: Color registeredColorNames;
		backgroundColorBlock: [ :item | Color named: item ];
		title: 'Registered Colors'.
	iconList
		items: Smalltalk ui icons icons associations;
		displayBlock: [ :assoc | assoc key ];
		sortingBlock: [ :assocA :assocB | assocA key < assocB key ];
		icons: [ :assoc | assoc value ];
		title: [ 'Available icons for the current theme.' ].