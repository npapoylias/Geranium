as yet unclassified
ppcJsonMemo

		^ [  1 to: self times do: [ :i |	ppcJsonParser parse: self jsonExample]] timeToRun