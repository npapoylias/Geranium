examples
geraniumAreaMapExample

	"refactor class, methods and its own spec/roassal widget.."

	"Bounding box should be eventually user-defined 
(right now retrieved through OSM with direct
link to overpass where I generated the query 
(general enough for our purposes) -- should look
closely for more data (ie in nodes/relationships etc) --
represent other entities, consider interactions,
theming etc (see for e.g https://mc.bbbike.org/mc/?num=2&mt0=mapnik&mt1=watercolor)"

	| v map response nodes |
	v := RTView new.
	map := RTOSM new ratio: 100.
	v add: map element.
	response := ZnClient new
    url: 'http://overpass-api.de/api/interpreter';
    queryAt: 'data' put: '[out:json]
[timeout:25]
;
(  
way["highway"=residential](46.16352961038194,-1.1302614212036133,46.166851083597415,-1.1267745494842527);
way["building"="yes"](46.16352961038194,-1.1302614212036133,46.166851083597415,-1.1267745494842527);
);
out body;
>;
out skel qt;';
    contentReader: [ :entity | NeoJSONReader fromString: entity contents ];
    get.
	nodes := (((response at: 'elements') select: [ :el | (el at: 'type') = 'node' ])
		collect: [ :el | (el at: 'id') -> (map latLonToRoassal: (el at: 'lat') @ (el at: 'lon')) ]) asDictionary.
	((response at: 'elements') select: [ :el | (el at: 'type') = 'way' ])
		do: [ :way | 
			| shape |
					(((way at: 'tags') at: 'building' ifAbsent: [  ]) = 'yes'
						ifTrue: [ shape := RTPolygon new borderColor:Color black; borderWidth: 5; color: Color blue. 
							shape vertices: ((way at: 'nodes') collect: [ :n | nodes at: n ]).
							v add: (shape elementOn: (way at: 'tags')) @ RTPopup	
						]
						ifFalse: [ "other info or handle the roads as lines etc"]).
			 ].
	v canvas addMenu: 'In' callback: [ RTZoomInMove on: v ].
	v canvas addMenu: 'Out' callback: [ RTZoomOutMove on: v ].
	v @ RTDraggableView @ RTZoomableView.
	RTEmptyViewContext setOnView: v.
	v canvas camera focusOnCenterScaled.
	^ v