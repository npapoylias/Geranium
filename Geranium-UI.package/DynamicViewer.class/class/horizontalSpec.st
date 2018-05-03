accessing
horizontalSpec
<spec: #default>
^ SpecColumnLayout composed
newRow: [ :r |
r newColumn: [:c | c add: #list] left: 0 right: 0.7.
r newColumn: [:c | c add: #view] left: 0.32 right: 0];
newRow: [ :r | r add: #button ] height: self toolbarHeight;
yourself.