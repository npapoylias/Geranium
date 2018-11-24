scripts
pedoburEgAnalysis

	
	| pedobur addr |
	pedobur := (NeoCSVReader on: (FileStream readOnlyFileNamed:  'pedobur.csv')) namedColumnsConfiguration upToEnd.
	addr := pedobur collect: [ :d | d at: #ADRESSE_SIG ifAbsent: [ nil ] ]. "3 nils"
	addr asSet size