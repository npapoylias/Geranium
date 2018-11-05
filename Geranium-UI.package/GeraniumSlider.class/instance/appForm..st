accessing
appForm: aSymbol

	^ ((FileSystem  workingDirectory / 'icons' / aSymbol asString , 'png') readStreamDo: [ :s | ImageReadWriter formFromStream:  s ]) 