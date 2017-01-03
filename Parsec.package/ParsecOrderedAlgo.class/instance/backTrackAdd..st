adding
backTrackAdd: alternative

				backTrackStack push: 
					(ParsecBackTrackState new 
						at: readingPosition indexedBy: charts chartIndex -> charts current size with: alternative)