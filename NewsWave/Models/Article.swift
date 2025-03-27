//
//  Article.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/24/25.
//

import Foundation
import SwiftData

@Model
class Article {
//    let source: Source
    var articleHash: String
    var author: String?
    var title: String
    var articleDescription: String
    var sourceName: String
    var url: String
    var urlToImage: String
    var publishedAt: String
    var content: String
    
    init(
        author: String? = nil,
        title: String,
        articleDescription: String,
        sourceName: String,
        url: String,
        urlToImage: String,
        publishedAt: String,
        content: String
    ) {
        self.articleHash = "\(title) \(articleDescription)".sha256
        self.author = author
        self.title = title
        self.articleDescription = articleDescription
        self.sourceName = sourceName
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
        self.content = content
    }
}

//struct Source: Codable, Equatable, Hashable {
//    let id: String?
//    let name: String
//}

extension Article {
    var toArticleResponse: ArticleResponse {
        ArticleResponse(
            source: Source(id: "", name: sourceName),
            author: author,
            title: title,
            description: articleDescription,
            url: url,
            urlToImage: urlToImage,
            publishedAt: publishedAt,
            content: content
        )
    }
}
