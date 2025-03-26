//
//  SearchPresenter.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/26/25.
//

import Foundation

protocol SearchPresenter: AnyObject {
    var view: SearchViewProtocol? { get set }
    func performSearch(query: String) async
}

class SearchPresenterImpl: SearchPresenter {
    private let articleService: ArticleService
    private let networkService: NetworkService
    
    var view: (any SearchViewProtocol)?
    
    init(articleService: ArticleService, networkService: NetworkService) {
        self.articleService = articleService
        self.networkService = networkService
    }
    
    func performSearch(query: String) async {
        do {
            let queryResults = try await networkService.searchNews(query: query)
            view?.updateDataSource(articles: queryResults.articles)
        } catch {
            
        }
    }
}
