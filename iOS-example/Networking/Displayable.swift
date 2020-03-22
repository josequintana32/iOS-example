protocol Displayable {
  var titleLabelText: String { get }
  var overviewLabelText: String { get }
  var item1: (label: String, value: String) { get }
  var listTitle: String { get }
  var listItems: [Int] { get }
}
