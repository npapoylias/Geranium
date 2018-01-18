examples
geraniumAreaMapExample

	"refactor in its own spec/roassal widget.."

	"Bounding box should be eventually user-defined 
	(right now retrieved through OSM with direct
	link to overpass where I generated the query 
	(general enough for our purposes) -- should look
	closely for more data (ie in nodes/relationships etc) --
	represent other entities, consider interactions,
	theming etc (see for e.g https://mc.bbbike.org/mc/?num=2&mt0=mapnik&mt1=watercolor)"

	^ self mapWithBuildingsCenteredAroundBoundingBox: 
		'46.16352961038194,-1.1302614212036133,46.166851083597415,-1.1267745494842527'.
	