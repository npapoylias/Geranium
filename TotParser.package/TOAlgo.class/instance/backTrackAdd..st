adding
backTrackAdd: alternative

				backTrackStack push: 
					(TBackTrackState new 
						at: readingPosition indexedBy: charts chartIndex -> charts current size with: alternative)