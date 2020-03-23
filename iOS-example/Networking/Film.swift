struct Film: Decodable {
    let popularity: Double
    let voteCount: Int
    let video: Bool
    let posterPath: String
    let id: Int
    let adult: Bool
    let backdropPath: String?
    let originalLanguage, originalTitle: String
    let genreIDS: [Int]
    let title: String
    let voteAverage: Double
    let overview, releaseDate: String
    
    enum CodingKeys: String, CodingKey {
        case popularity
        case voteCount = "vote_count"
        case video
        case posterPath = "poster_path"
        case id, adult
        case backdropPath = "backdrop_path"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case genreIDS = "genre_ids"
        case title
        case voteAverage = "vote_average"
        case overview
        case releaseDate = "release_date"
    }
}

extension Film: Displayable {
    var titleLabelText: String {
        title
    }
    
    var overviewLabelText: String {
        overview
    }
    
    var ratingLabelText: Double {
        voteAverage
    }
    
    var votesLabelText: Int {
        voteCount
    }
    
    var releaseLabelText: String {
        releaseDate
    }
    
    var popularityLabelText: Double {
        popularity
    }
    
    var posterImage: (label: String, value: String) {
        ("si", posterPath)
    }
    
    var backdropImage: (label: String, value: String) {
        let defaultBack = "https://image.freepik.com/free-vector/red-theater-curtain-backdrop-theater-opera-cinema-empty-silk-stage-background-red-scene-realistic-illustration_87720-856.jpg"
        
        return ("si", backdropPath ?? defaultBack)
    }
    
    var listTitle: String {
        "si"
    }
    
    var listItems: [Int] {
        genreIDS
    }
}
