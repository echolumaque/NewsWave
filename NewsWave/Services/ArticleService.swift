//
//  ArticleService  .swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/24/25.
//

import Foundation
import SwiftData

@ModelActor
actor ArticleService {
    func getCachedFavoriteArticles() -> Set<String> {
        do {
            var fetchDescriptor = FetchDescriptor<Article>()
            fetchDescriptor.propertiesToFetch = [\.articleHash]
            let favoriteArticles = try modelContext.fetch(fetchDescriptor).map { $0.articleHash }
            return Set(favoriteArticles)
        } catch {
            return []
        }
    }
    
    func getFavoriteArticles() -> [Article] {
        do {
            let favoriteArticles = try modelContext.fetch(FetchDescriptor<Article>())
            return favoriteArticles
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
    func addOrRemoveFaveHeadline(article: ArticleResponse) -> Bool {
        do {
            let articlePredicate = #Predicate<Article> { $0.articleHash == article.computedId }
            var fetchDescriptor = FetchDescriptor<Article>(predicate: articlePredicate)
            fetchDescriptor.fetchLimit = 1
            let isExisting = try modelContext.fetchCount(fetchDescriptor) > 0
            var isAddedToFavorites: Bool
            
            if isExisting {
                try modelContext.delete(model: Article.self, where: articlePredicate)
                isAddedToFavorites = false
            } else {
                let newArticle = Article(
                    author: article.author,
                    title: article.title,
                    headlineDescription: article.description,
                    sourceName: article.source.name,
                    url: article.url,
                    urlToImage: article.urlToImage,
                    publishedAt: article.publishedAt,
                    content: article.content
                )
                modelContext.insert(newArticle)
                isAddedToFavorites = true
            }
            
            try modelContext.save()
            return isAddedToFavorites
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}
