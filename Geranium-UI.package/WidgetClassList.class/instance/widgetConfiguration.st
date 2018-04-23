setup
widgetConfiguration

	list items: (AbstractWidgetModel allSubclasses sorted: [:a :b | a name < b name])