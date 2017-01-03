as yet unclassified
ppcJson
		 
		^ [  1 to: self times do: [ :i |	ppcJsonParser parse: self jsonExample]] timeToRun