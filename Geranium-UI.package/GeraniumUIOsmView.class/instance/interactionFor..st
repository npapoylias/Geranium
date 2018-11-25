examples
interactionFor: anElement
	|vertices|
	vertices := anElement shape vertices value: anElement.
	(self class colorMap keys includes: vertices)
		ifTrue: [ anElement color: (self class colorMap at: vertices) ]. 
	anElement when: TRMouseClick do: [ :evt | |currentValue builder dialog o s|
			builder := ExampleBuilderMorph new.
			dialog := (builder newPluggableDialogWindow: 'Choose a color') useDefaultOKButton.
			dialog contentMorph: (dialog newRow: {
			dialog newTitle: 'HSVA Color Selector' for:
			(s:=(dialog newHSVASelector: Color cyan
					help: 'This is a hue-saturation-volume-alpha selector')
					minHeight: 184; minWidth: 184)});
			model: nil.
			o := builder openModal: dialog.
			[[o owner isNil] whileFalse: [ Processor yield ].
				anElement color: s selectedColor.
				self class colorMap at: vertices put: s selectedColor.
			] fork.
	].
	^ anElement