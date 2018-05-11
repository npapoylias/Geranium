accessing
exampleAnimation

	| v shape el continue animation |
v := RTView new.
shape := RTEllipse new
	color: (Color red alpha: 0.2);
	size: 80.
continue := true.
animation := [ :e | continue ifTrue: [v addAnimation: (RTLinearMove new to: 600 atRandom @ 600 atRandom during: 2 on: e; after: [animation value: e]) ]].
100
	timesRepeat: [ el := shape element translateTo: 600 atRandom @ 600 atRandom.
		el @ RTDraggable.
		v add: el.
		 animation value: el ].
"continue := false."
^ v