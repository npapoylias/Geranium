accessing
succeeded

	^ self last anySatisfy: [ :state | state isFinal ]