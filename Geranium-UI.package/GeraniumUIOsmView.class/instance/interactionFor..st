examples
interactionFor: anElement

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
			[o owner isNil] whileTrue: [ Processor yield ].
			s selectedColor
	].
	^ anElement