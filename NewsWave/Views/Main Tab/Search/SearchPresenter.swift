//
//  SearchPresenter.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/26/25.
//

import Foundation

protocol SearchPresenter: AnyObject {
    var view: SearchViewProtocol? { get set }
    var favoriteArticles: Set<String> { get set }
    
    func viewLoaded() async
    func performSearch(query: String) async
    func save(article: ArticleResponse) async
}

class SearchPresenterImpl: SearchPresenter {
    private let articleService: ArticleService
    private let networkService: NetworkService
    
    var view: (any SearchViewProtocol)?
    var favoriteArticles: Set<String> = []
    
    init(articleService: ArticleService, networkService: NetworkService) {
        self.articleService = articleService
        self.networkService = networkService
    }
    
    func viewLoaded() async {
        favoriteArticles = await articleService.getCachedFavoriteArticles()
    }
    
    func performSearch(query: String) async {
        do {
            let queryResults = try await networkService.searchArticles(query: query)
            view?.updateDataSource(articles: queryResults.articles)
        } catch {
            
        }
    }
    
    func save(article: ArticleResponse) async {
        let isAddedToFavorites = await articleService.addOrRemoveFavorite(article: article)
        if isAddedToFavorites { favoriteArticles.insert(article.computedId) }
        else { favoriteArticles.remove(article.computedId) }
    }
}
