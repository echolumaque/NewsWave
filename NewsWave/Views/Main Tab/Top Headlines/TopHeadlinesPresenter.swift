//
//  TopHeadlinesPresenter.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Alamofire
import Foundation

protocol TopHeadlinesPresenter: AnyObject {
    var newsResponse: NewsResponse? { get set }
    var view: TopHeadlinesViewProtocol? { get set }
    func viewLoaded() async throws(AFError)
}

class TopHeadlinesPresenterImpl: TopHeadlinesPresenter {
    private let networkService: NetworkService
    
    var newsResponse: NewsResponse?
    weak var view: (any TopHeadlinesViewProtocol)?
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    func viewLoaded() async throws(AFError) {
//        let response = try await networkService.getTopHeadlines()
//        view?.updateNewsDataSource(articles: response.articles)
        view?.updateNewsDataSource(articles: Array(NewsResponse.test.articles.prefix(5)))
    }
}
