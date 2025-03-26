//
//  SearchViewController.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Combine
import Swinject
import UIKit

protocol SearchViewProtocol: AnyObject, UIViewController {
    var presenter: SearchPresenter? { get set }
    func updateDataSource(articles: [ArticleResponse])
}

class SearchViewController: UIViewController, SearchViewProtocol {
    private var cancellables = Set<AnyCancellable>()
    private let container: Resolver
    private lazy var searchCollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewLayoutHelper.listLayout(interGroupSpacing: 8)
    )
    private var searchDataSource: UICollectionViewDiffableDataSource<Section, ArticleResponse>!
    private let searchTextPublisher = PassthroughSubject<String, Never>()
    
    var presenter: (any SearchPresenter)?
    
    init(container: Resolver) {
        self.container = container
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureSearchController()
        configureCollectionView()
    }
    
    private func configureSearchController() {
        let searchController = UISearchController()
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = "Search for an article"
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
        searchTextPublisher
            .debounce(for: .milliseconds(300), scheduler: RunLoop.main)
            .sink { [weak self] query in
                Task { [weak self] in await self?.presenter?.performSearch(query: query) }
            }
            .store(in: &cancellables)
    }
    
    private func configureCollectionView() {
        searchCollectionView.delegate = self
        view.addSubview(searchCollectionView)
        searchCollectionView.pinToEdges(of: view)
        
        let articleCell = UICollectionView.CellRegistration<HeadlineCell, ArticleResponse> { [weak self] cell, indexPath, article in
            guard let self else { return }
            
            let totalItems = searchDataSource.snapshot().numberOfItems(inSection: .main)
            cell.set(article: article, container: container)
            cell.divider.isHidden = indexPath.item + 1 == totalItems
        }
        
        searchDataSource = UICollectionViewDiffableDataSource(collectionView: searchCollectionView) { collectionView, indexPath, article in
            let cell = collectionView.dequeueConfiguredReusableCell(using: articleCell, for: indexPath, item: article)
            return cell
        }
    }
    
    func updateDataSource(articles: [ArticleResponse]) {
        var snapshot = NSDiffableDataSourceSnapshot<Section, ArticleResponse>()
        snapshot.appendSections([.main])
        snapshot.appendItems(articles)
        DispatchQueue.main.async { self.searchDataSource.apply(snapshot, animatingDifferences: true) }
    }
}

extension SearchViewController: UICollectionViewDelegate {
    
}

extension SearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text, !searchText.isEmpty else { return }
        searchTextPublisher.send(searchText)
    }
}
