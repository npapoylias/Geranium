helper
appIcon: aSymbol size: aPoint

	^ ((FileSystem  workingDirectory / 'icons' / aSymbol asString , 'png') readStreamDo: [ :s | ImageReadWriter formFromStream:  s ]) scaledToSize: aPoint