protocol Displayable {
    var titleLabelText: String { get }
    var overviewLabelText: String { get }
    var ratingLabelText: Double { get }
    var votesLabelText: Int { get }
    var releaseLabelText: String { get }
    var popularityLabelText: Double { get }
    var posterImage: (label: String, value: String) { get }
    var backdropImage: (label: String, value: String) { get }
    var listTitle: String { get }
    var listItems: [Int] { get }
}
