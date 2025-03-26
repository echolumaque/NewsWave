//
//  MainTabController.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/12/25.
//

import UIKit
import Swinject

class MainTabController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .systemPurple
    }
    
    func createTopHeadlinesTab(container: Resolver) -> UINavigationController {
        guard let topHeadlinesVC = container.resolve(TopHeadlinesViewProtocol.self) else { return UINavigationController() }
        
        topHeadlinesVC.tabBarItem = UITabBarItem(title: "Headlines", image: UIImage(systemName: "newspaper.fill"), tag: 0)
        return UINavigationController(rootViewController: topHeadlinesVC)
    }
    
    func createSearchNewsTab(container: Resolver) -> UINavigationController {
        guard let searchVC = container.resolve(SearchViewProtocol.self) else { return UINavigationController() }
        
        searchVC.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createBookmarksTab(container: Resolver) -> UINavigationController {
        guard let bookmarksVC = container.resolve(BookmarksViewProtocol.self) else { return UINavigationController() }
        
        bookmarksVC.tabBarItem = UITabBarItem(title: "Bookmarks", image: UIImage(systemName: "bookmark.fill"), tag: 2)
        return UINavigationController(rootViewController: bookmarksVC)
    }
}
