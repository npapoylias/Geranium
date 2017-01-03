accessing
asScannerStateFrom: start to: end withIndex: anAlternative

	^ ParsecState on: self alternative: anAlternative from: start to: end dot: 1 "ie at the end"
	"the alternative is not the correct one here -- but the one return from the terminal match"