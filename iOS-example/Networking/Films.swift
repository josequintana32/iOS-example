struct Films: Decodable {
    let page, totalResults, totalPages: Int
    let results: [Film]
    
    enum CodingKeys: String, CodingKey {
        case page
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case results
    }
}
