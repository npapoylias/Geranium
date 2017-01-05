filtering
firsts: aList

	"should be precomputed after all rules are in but before parsing so to 
	avoid lazy overhead while parsing, on live update should be recomputed.
	Infinite recursion avoided because of memoizaton currently (recheck)"

	firsts := aList