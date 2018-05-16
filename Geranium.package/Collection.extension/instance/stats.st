*Geranium
stats

	^ { #avg -> self average . 
		#var -> self variance . 
		#sigma -> self sigma . 
		#min -> self min . 
		#max -> self max } asDictionary