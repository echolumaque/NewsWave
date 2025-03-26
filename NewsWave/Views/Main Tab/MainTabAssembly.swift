//
//  MainTabAssembly.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Swinject

class MainTabAssembly: Assembly {
    func assemble(container: Container) {
        container.register(MainTabController.self) { resolver in
            let view = MainTabController()
            view.viewControllers = [
                view.createTopHeadlinesTab(container: resolver),
                view.createSearchNewsTab(container: resolver),
                view.createBookmarksTab(container: resolver)
            ]
            
            return view
        }
        
        // MARK: - Top Headlines VC
        container.register(TopHeadlinesViewProtocol.self) { resolver in
            TopHeadlinesViewController(container: resolver)
        }.initCompleted { resolver, view in
            view.presenter = resolver.resolve(TopHeadlinesPresenter.self)
        }
        
        container.register(TopHeadlinesPresenter.self) { resolver in
            TopHeadlinesPresenterImpl(
                articleService: resolver.resolve(ArticleService.self)!,
                networkService: resolver.resolve(NetworkService.self)!
            )
        }.initCompleted { resolver, presenter in
            presenter.view = resolver.resolve(TopHeadlinesViewProtocol.self)
        }
        
        // MARK: - Search VC
        container.register(SearchViewProtocol.self) { resolver in
            SearchViewController(container: resolver)
        }.initCompleted { resolver, view in
            view.presenter = resolver.resolve(SearchPresenter.self)
        }
        
        container.register(SearchPresenter.self) { resolver in
            SearchPresenterImpl(
                articleService: resolver.resolve(ArticleService.self)!,
                networkService: resolver.resolve(NetworkService.self)!
            )
        }.initCompleted { resolver, presenter in
            presenter.view = resolver.resolve(SearchViewProtocol.self)
        }
        
        // MARK: - Bookmarks VC
        container.register(BookmarksViewProtocol.self) { resolver in
            BookmarksViewController(container: resolver)
        }.initCompleted { resolver, view in
            view.presenter = resolver.resolve(BookmarksPresenter.self)
        }
        
        container.register(BookmarksPresenter.self) { resolver in
            BookmarksPresenterImpl(articleService: resolver.resolve(ArticleService.self)!)
        }.initCompleted { resolver, presenter in
            presenter.view = resolver.resolve(BookmarksViewProtocol.self)
        }
    }
}
