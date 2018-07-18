as yet unclassified
createOwnAwarenessPlot
	| total own aware totalOwners totalAware totalResidences processed |
	totalOwners := (report inputVisitor residences select: [ :r | r occupants ownership ]) size.
	totalAware :=  (report inputVisitor residences select: [ :r | r occupants awareness asBoolean ]) size.
	totalResidences := report inputVisitor residences size.
	ownAwarenessPlot  := RoassalModel new.
	ownAwarenessPlot 
		script: [ :v :c | |b d|
			processed ifNil: [processed := true. self processCanvas: c and: v].
			total := (self consumptionHistoryCumSumAt: step + 1) first.
			own := self ownConsumptionHistoryCumSumAt: step + 1.
			aware := self awareConsumptionHistoryCumSumAt: step + 1.

			b := RTGrapher new view: v. 
			d := RTHorizontalMultipleData new.
			
			d barShape color: Color blue.
			
			d points: {
				{'Ownership (Y/N)' . 
				(totalOwners = 0 ifTrue: [0] ifFalse: [(own / totalOwners)]) . 
				(total=own) ifTrue: [0] ifFalse: [
					(total - own) / ((totalResidences - totalOwners) = 0 
					ifTrue: [1] ifFalse: [(totalResidences - totalOwners)])
				]}. 
				{'Awareness (Y/N)' . 
				(totalAware = 0 ifTrue: [0] ifFalse: [aware / totalAware]) . 
				(total=aware) ifTrue: [0] ifFalse: [
					(total - aware) / ((totalResidences - totalAware)=0 
					ifTrue: [ 1 ] ifFalse: [ (totalResidences - totalAware) ])
				]} 
			}.
			d addMetric: #second.
			d addMetric: #third.

			"d barChartWithBarCenteredTitle: #first."
			d barChartWithBarTitle: #first rotation: -30.
			b add: d.
			"b addDecorator: RTMeanDevVarDecorator new moveInFront."
			b axisY
				noDecimal;
				title: 'Avg. Total kWh / Residence'.
			b build.
			v canvas camera "focusOnCenterScaled."focusOnCenterScaled: v canvas extent * self cameraScale.
			v @ (RTGridView new gridSize: 10).
			v]