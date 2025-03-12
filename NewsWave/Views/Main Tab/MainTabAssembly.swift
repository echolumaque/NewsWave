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
                view.createSearchNewsTab(),
                view.createBookmarksTab()
            ]
            
            return view
        }
        
        // MARK: - Top Headlines VC
        container.register(TopHeadlinesViewProtocol.self) { resolver in
            TopHeadlinesViewController()
        }.initCompleted { resolver, view in
            view.presenter = resolver.resolve(TopHeadlinesPresenter.self)
        }
        
        container.register(TopHeadlinesPresenter.self) { resolver in
            TopHeadlinesPresenterImpl(networkService: resolver.resolve(NetworkService.self)!)
        }.initCompleted { resolver, presenter in
            presenter.view = resolver.resolve(TopHeadlinesViewProtocol.self)
        }
    }
}
