api
gotoStep: aStep

	self stepChanged: (step := aStep).
	slider widget updateValue