as yet unclassified
ppJsonMemo
		
		^ [  1 to: self times do: [ :i |	ppJsonParser parse: self jsonExample]] timeToRun