initialization
gotoStep: aStep

	self stepChanged: (step := aStep - 1).
	slider widget updateValue