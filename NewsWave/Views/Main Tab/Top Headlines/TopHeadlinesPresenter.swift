//
//  TopHeadlinesPresenter.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Alamofire
import Foundation

protocol TopHeadlinesPresenter: AnyObject {
    var view: TopHeadlinesViewProtocol? { get set }
    var favoriteArticles: Set<String> { get set }
    
    func viewLoaded() async throws(AFError)
    func saveHeadline(article: ArticleResponse) async
}

class TopHeadlinesPresenterImpl: TopHeadlinesPresenter {
    private let articleService: ArticleService
    private let networkService: NetworkService
    
    weak var view: (any TopHeadlinesViewProtocol)?
    var favoriteArticles: Set<String> = []
    
    init(articleService: ArticleService, networkService: NetworkService) {
        self.articleService = articleService
        self.networkService = networkService
    }
    
    func viewLoaded() async throws(AFError) {
//        let response = try await networkService.getTopHeadlines()
//        view?.updateNewsDataSource(articles: response.articles)
//        print(response)
        
        view?.updateNewsDataSource(articles: HeadlineResponse.keywordTest.articles)
        self.favoriteArticles = await articleService.getCachedFavoriteArticles()
    }
    
    func saveHeadline(article: ArticleResponse) async {
        let isAddedToFavorites = await articleService.addOrRemoveFaveHeadline(article: article)
        if isAddedToFavorites { favoriteArticles.insert(article.computedId) }
        else { favoriteArticles.remove(article.computedId) }
    }
}
