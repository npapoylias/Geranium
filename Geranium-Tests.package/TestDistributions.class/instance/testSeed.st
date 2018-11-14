tests
testSeed

	| distributions d1 d2 |
	distributions := {  
		[ ((5 ~ 2) | [ 0 -> 10 ]) ].
		[ (5.0 ~ 2) ].
		[ (5 ~ 2) ].
		[ [ 0 -> 10 ] asRangedDistribution ].
		[ [ 0 ~> 10 ] asRangedDistribution ].
		[ [ 0.0 ~> 10 ] asRangedDistribution ].
		[ true % 50 ].
		[ false % 50 ].
		[ { #x . #y . #z } % { 10 . 20 . 70 } ].
		[ { 0 . 1 . 2 } % { 10 . 20 . 70 } ]
	}.

distributions do: [ :d |
	GRSeed random. 
	d1 := d value next: 10.
	d2 := d value next: 10.
	self assert: d1 ~= d2.
	GRSeed seed: 2342342. 
	d1 := d value next: 10.
	d2 := d value next: 10.
	self assert: d1 = d2.
	GRSeed random. 
	d1 := d value next: 10.
	d2 := d value next: 10.
	self assert: d1 ~= d2.	
]

""