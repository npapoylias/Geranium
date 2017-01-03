as yet unclassified
asScannerStateFrom: start to: end withIndex: anAlternative


	^ (self ruleAtDot asScannerStateFrom: start to: end withIndex: anAlternative)
			fromTerminal: self toTerminal;
			toTerminal: self toTerminal + 1
