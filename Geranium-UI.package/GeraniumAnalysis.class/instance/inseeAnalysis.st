examples
inseeAnalysis

	
| inseeArrayOfDicts ACHL percentages DPE TYPL SURF DIPL AWAR POPL POPLTOT POPL_CHILD POPL_CAT pop2resRatio |

inseeArrayOfDicts := (NeoCSVReader on: (FileStream readOnlyFileNamed:  'INSEE.csv')) namedColumnsConfiguration upToEnd.
ACHL := inseeArrayOfDicts collect: [:dict | { 
		(dict at: #ACHL).
		(dict at: #CMBL).
		(dict at: #CHFL).
}].
ACHL doWithIndex: [ :item :index | "we can do this automagically by reading the meta-data"
	|cu|
	cu := ''.
	(item second = '1' or: [ item third = '1' ])
		ifTrue: [ cu := ' (Collectif/Urbain)'].
	item first = '111' ifTrue: [ACHL at: index put: '...-1919' , cu].
	item first = '112' ifTrue: [ ACHL at: index put: '1919-1945' , cu ].
	item first = '211' ifTrue: [ ACHL at: index put: '1946-1970' , cu ].
	item first = '212' ifTrue: [ ACHL at: index put: '1971-1990' , cu ].
	item first = '311' ifTrue: [ ACHL at: index put: '1991-2005' , cu ].
	item first asNumber >= 312 ifTrue: [ ACHL at: index put: '2006-...' , cu ]
].
ACHL.
percentages := ACHL frequencies collect: [:count | (count / ACHL size) asFloat].
ACHL identityHistogram: (Color distinctTenLightColors at: 1).

DPE := ACHL copy.

DPE doWithIndex: [ :item :index | 
	|cu|
	cu := ' (Collectif/Urbain)'.
	({ '...-1919' . '1919-1945'} includes: item) ifTrue: [DPE at: index put: 'DPEF'].
	({ '1919-1945' , cu . '1946-1970' } includes: item) ifTrue: [DPE at: index put: 'DPEE'].
	({ '1946-1970' , cu . '1971-1990' } includes: item) ifTrue: [DPE at: index put: 'DPED'].
	({ '1971-1990' , cu . '1991-2005' } includes: item) ifTrue: [DPE at: index put: 'DPEC'].
	({ '1991-2005' , cu .  '2006-...' } includes: item) ifTrue: [DPE at: index put: 'DPEB'].
	({ '2006-...' , cu } includes: item) ifTrue: [DPE at: index put: 'DPEA'].
].

DPE. 
percentages := DPE frequencies collect: [:count | (count / DPE size) asFloat].
DPE identityHistogram: (Color distinctTenLightColors at: 2).

TYPL := inseeArrayOfDicts collect: [:dict | 
		(dict at: #TYPL).
].

TYPL doWithIndex: [ :item :index | 
	TYPL at: index put:
		(item = '1' ifTrue: [  'Maison' ] ifFalse: [ 'Appartement']) 
].

percentages := TYPL frequencies collect: [:count | (count / TYPL size) asFloat]. 
TYPL identityHistogram: (Color distinctTenLightColors at: 3).

SURF := inseeArrayOfDicts collect: [:dict | 
		(dict at: #SURF).
].

SURF doWithIndex: [ :item :index |
	|n|
	n := item asNumber. 
	n = 1 ifTrue: [ SURF at: index put: '< 30 m2' ].
	n = 2 ifTrue: [ SURF at: index put: '30 - 40 m2' ].
	n = 3 ifTrue: [ SURF at: index put: '40 - 60 m2' ].
	n = 4 ifTrue: [ SURF at: index put: '60 - 80 m2' ].
	n = 5 ifTrue: [ SURF at: index put: '80 - 100 m2' ].
	n = 6 ifTrue: [ SURF at: index put: '100 - 120 m2' ].
	n = 7 ifTrue: [ SURF at: index put: '>= 120 m2' ].

].
SURF.
percentages := SURF frequencies collect: [:count | (count / SURF size) asFloat]. 
SURF identityHistogram: (Color distinctTenLightColors at: 4).

DIPL := inseeArrayOfDicts collect: [:dict | 
		(dict at: #DIPLM_15).
].

AWAR := DIPL copy.

DIPL doWithIndex: [ :item :index |
	item  = 'A' ifTrue: [DIPL at: index put: 'Aucun'. AWAR at: index put: 'ConsumptionUnaware'].
	item = 'B' ifTrue: [ DIPL at: index put: 'CAP/BEP'. AWAR at: index put: 'ConsumptionUnaware'].
	item  = 'C' ifTrue: [ DIPL at: index put: 'BAC'. AWAR at: index put: 'ConsumptionAware'].
	item  = 'D' ifTrue: [ DIPL at: index put: 'Superieur'. AWAR at: index put: 'ConsumptionAware' ].
	(item  = 'Z' or: [ item = 'YY' ]) ifTrue: [ DIPL at: index put: 'N/A'. AWAR at: index put: 'ConsumptionUnaware' ].
].
DIPL.

percentages := DIPL frequencies collect: [:count | (count / DIPL size) asFloat]. 
DIPL identityHistogram: (Color distinctTenLightColors at: 5).


AWAR.
percentages := AWAR frequencies collect: [:count | (count / AWAR size) asFloat]. 
AWAR identityHistogram: (Color distinctTenLightColors at: 6).

POPL := inseeArrayOfDicts collect: [:dict | { 
		(dict at: #INPER) = 'Y' ifTrue: [ 1 ] ifFalse: [ (dict at: #INPER) asNumber ].
		((dict at: #INP18M) = 'Y' ifTrue: [ 1 ] ifFalse: [ (dict at: #INP18M) asNumber ]).
}].
POPLTOT := (POPL collect: [ :item | item first ]) sum.
percentages := POPL frequencies collect: [:count | (count / POPL size) asFloat].
POPL identityHistogram: (Color distinctTenLightColors at: 7).

POPL_CHILD :=POPL collect: [ :item | item second ].
percentages := POPL_CHILD frequencies collect: [:count | (count / POPL_CHILD size) asFloat].
POPL_CHILD identityHistogram: (Color distinctTenLightColors at: 8).

POPL_CAT := POPL collect: [ :item |  
	item = #(1 0) ifTrue: [ 'Single Adult' ] ifFalse: [ 
	item = #(2 0) ifTrue: [ 'Couple' ] ifFalse: [
			'Family'
		]
	].
].

percentages := POPL_CAT frequencies collect: [:count | (count / POPL_CAT size) asFloat].
POPL_CAT identityHistogram: (Color distinctTenLightColors at: 8).

"sanity check"
(pop2resRatio := POPLTOT / inseeArrayOfDicts size) asFloat.
(3751/2166) asFloat.