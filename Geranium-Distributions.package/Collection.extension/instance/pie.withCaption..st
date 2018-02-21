*Geranium-Distributions
pie: aColor withCaption: aString

	| b |
b := RTPieBuilder new.
b interaction popup.
b objects: self.
b slice: [:assoc | assoc value].
b normalizer distinctColor.
b labeled.
^ b