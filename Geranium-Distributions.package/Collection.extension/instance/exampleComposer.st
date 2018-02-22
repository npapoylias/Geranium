*Geranium-Distributions
exampleComposer

	|c b b2 b3 b4|
	
	"{} exampleComposer"
	
	c := RTComposer new.
	c gap: 35.
	"-------"
	b := {#a -> (1 to: 100) . #b -> (10 to: 200) . #c -> (30 to: 400)}
		boxedPlot: Color green withCaption: 'hallo'.
	b view: c view.
	b build.
	c group: #hierarchy.
	"-------"
	b2 := [|x| x:= PMGaussianGenerator new. 
	((1 to: 100) collect: [:i | x next]) 
		frequencyHistogram: Color orange withCaption: 'hallo'] value.
	b2 view: c view.
	b2 build.
	c group: #stat.
	"-------"
	b3 := { #a -> (1 to: 3 ). #b -> (3 to: 6) . #c -> (6 to: 9 ). #d -> (9 to: 12) }
		kiviatForParameters: { #x . #y . #z .}
		withCaption: 'x y z kiviat'.
	b3 view: c view.
	b3 build.
	c group: #pie.
	"-------"
	b4 :=  { #a -> 20 . #b -> 70 . #c -> 10 } pieWithCaption: 'meh'.
	b4 view: c view.
	b4 build.
	c group: #plot.
	"-------"
	c move: #hierarchy onTheLeftOf: #pie.
	c move: #stat below: #hierarchy.
	c move: #plot below: #stat.
	c nameGroup: #hierarchy as: 'class hierarchy'.
	c nameGroup: #stat as: 'methods'.
	c nameGroup: #pie as: 'pie'.
	c nameGroup: #plot as: 'NOM x NOA x LOC'.
	c propagateHighlightToAll.
	^ c view