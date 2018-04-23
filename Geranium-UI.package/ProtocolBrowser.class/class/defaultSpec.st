specs
defaultSpec

	"self new openWithSpec"

	^ SpecColumnLayout composed
			newColumn: [ :col | 
				col newRow: [ :row | 
					row 
						add: #(viewer models);
						newColumn: [ :col2 | 
							col2 add: #(viewer api); add: #(viewer events)	
						]	
				]; add: #text
			];
		yourself