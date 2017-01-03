as yet unclassified
ppJson
	
	^ [  1 to: self times do: [ :i |	ppJsonParser parse: self jsonExample]] timeToRun