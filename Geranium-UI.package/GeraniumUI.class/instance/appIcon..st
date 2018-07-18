helper
appIcon: aSymbol

	^ ((FileSystem  workingDirectory / 'icons' / aSymbol asString , 'png') readStreamDo: [ :s | ImageReadWriter formFromStream:  s ]) scaledToSize: 36 @ 36