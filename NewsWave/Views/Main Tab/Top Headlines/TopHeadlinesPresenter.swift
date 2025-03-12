//
//  TopHeadlinesPresenter.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Foundation

protocol TopHeadlinesPresenter: AnyObject {
    var newsResponse: NewsResponse? { get set }
    var view: TopHeadlinesViewProtocol? { get set }
    func viewLoaded() async
}

class TopHeadlinesPresenterImpl: TopHeadlinesPresenter {
    private let networkService: NetworkService
    
    var newsResponse: NewsResponse?
    weak var view: (any TopHeadlinesViewProtocol)?
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    func viewLoaded() async {
        do {
            let response = try await networkService.getTopHeadlines()
            print("Response: \(response)")
        } catch {
            
        }
    }
}
