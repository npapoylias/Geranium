initialization
appIcon: aSymbol

	^ ((FileSystem  workingDirectory / 'icons' / aSymbol asString , 'png') readStreamDo: [ :s | ImageReadWriter formFromStream:  s ]) scaledToSize: 64 @ 64