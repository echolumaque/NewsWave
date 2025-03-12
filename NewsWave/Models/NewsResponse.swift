//
//  NewsResponse.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Foundation

struct NewsResponse: Codable {
//    let status: String
//    let totalResults: Int
    let articles: [Article]
//    let nextPage: String
    
    enum CodingKeys: String, CodingKey {
//        case status
//        case totalResults
        case articles = "results"
//        case nextPage
    }
}

// MARK: - Result
struct Article: Codable {
    let articleID, title: String
    let link: String
    let keywords, creator: [String]?
    let videoURL: String?
    let description: String?
    let content: String
    let pubDate: String
    let pubDateTZ: String
    let imageURL: String?
    let sourceID: String
    let sourcePriority: Int
    let sourceName: String
    let sourceURL: String
    let sourceIcon: String?
    let category: [String]
    let duplicate: Bool

    enum CodingKeys: String, CodingKey {
        case articleID = "article_id"
        case title, link, keywords, creator
        case videoURL = "video_url"
        case description, content, pubDate, pubDateTZ
        case imageURL = "image_url"
        case sourceID = "source_id"
        case sourcePriority = "source_priority"
        case sourceName = "source_name"
        case sourceURL = "source_url"
        case sourceIcon = "source_icon"
        case category
        case duplicate
    }
}
