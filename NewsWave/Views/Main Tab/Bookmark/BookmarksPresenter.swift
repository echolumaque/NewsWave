//
//  BookmarksPresenter.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/26/25.
//

import Foundation

protocol BookmarksPresenter: AnyObject {
    var view: BookmarksViewProtocol? { get set }
    func getSavedArticles() async
    func unsaveArtcle(article: Article) async
}

class BookmarksPresenterImpl: BookmarksPresenter {
    private let articleService: ArticleService
    
    weak var view: (any BookmarksViewProtocol)?
    
    init(articleService: ArticleService) {
        self.articleService = articleService
    }
    
    func getSavedArticles() async {
        let savedArticles = await articleService.getFavoriteArticles()
        view?.updateDataSource(articles: savedArticles)
    }
    
    func unsaveArtcle(article: Article) async {
        _ = await articleService.addOrRemoveFavorite(article: article.toArticleResponse)
    }
}
