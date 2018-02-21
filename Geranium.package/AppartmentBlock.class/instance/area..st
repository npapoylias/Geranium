accessing
area: anArea

	super area: anArea.
	self appartments values do: [ :app | app area: anArea ]