documentation
overview

	| unaware unawarePercentage temperature dpe|
	unaware := (self report input residences select: [:r | r occupants awareness = ConsumptionUnaware]) size.
	unawarePercentage := ((unaware / self report input residences size) * 100) rounded.
	temperature := self report whatIf at: #temperature ifAbsent: [ 0 ].
	dpe := "(DPEConsumptionCategory of: "((self report input residences collect: [ :r | r category median ]) average * 1000) rounded") asNumber". "compared to DPEG max * 100"
	^ {dpe . temperature . unawarePercentage} "Structure 0-6, Climate 0-5, Social 0-100"