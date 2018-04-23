setup
widgetInstantiation
	"to instantiate custom ui, use self instatiate, check the ComposableModel hierachy for more"
	screen := self instantiate: LabelModel "self newLabel".
	buttonHappy := self newButton.
	buttonNeutral := self newButton.
	buttonBad := self newButton.
	registeredColorsList := self instantiate: ListModel.
	iconList := self instantiate: IconListModel.