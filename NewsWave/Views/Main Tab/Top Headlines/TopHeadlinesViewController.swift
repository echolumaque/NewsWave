//
//  TopHeadlinesViewController.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import UIKit
import SafariServices
import Swinject

protocol TopHeadlinesViewProtocol: AnyObject, UIViewController {
    var presenter: TopHeadlinesPresenter? { get set }
    func updateNewsDataSource(articles: [ArticleResponse])
}

class TopHeadlinesViewController: UIViewController, TopHeadlinesViewProtocol {
    private let container: Resolver
    private lazy var newsCollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewLayoutHelper.listLayout(interGroupSpacing: 8)
    )
    private var newsDataSource: UICollectionViewDiffableDataSource<Section, ArticleResponse>!
    private lazy var newsRefresher = UIRefreshControl()
    
    var presenter: (any TopHeadlinesPresenter)?
    
    init(container: Resolver) {
        self.container = container
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCollectionView()
        
//        Task { [weak self] in try? await self?.presenter?.viewLoaded() }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Task { [weak self] in try? await self?.presenter?.viewLoaded() }
    }
    
    private func configureViewController() {
        view.backgroundColor = .systemBackground
        title = "Top Headlines"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func configureCollectionView() {
        newsCollectionView.alwaysBounceVertical = true
        newsCollectionView.refreshControl = newsRefresher
        newsCollectionView.delegate = self
        newsRefresher.addTarget(self, action: #selector(didPullToRefreshNews(_:)), for: .valueChanged)
        
        view.addSubview(newsCollectionView)
        newsCollectionView.pinToEdges(of: view)
        
        let articleCell = UICollectionView.CellRegistration<ArticleCell, ArticleResponse> { [weak self] cell, indexPath, article in
            guard let self else { return }
            
            let totalItems = newsDataSource.snapshot().numberOfItems(inSection: .main)
            cell.set(article: article, container: container)
            cell.divider.isHidden = indexPath.item + 1 == totalItems
        }
        newsDataSource = UICollectionViewDiffableDataSource(collectionView: newsCollectionView) { collectionView, indexPath, article in
            let headlineCell = collectionView.dequeueConfiguredReusableCell(using: articleCell, for: indexPath, item: article)
            return headlineCell
        }
    }
    
    func updateNewsDataSource(articles: [ArticleResponse]) {
        var snapshot = NSDiffableDataSourceSnapshot<Section, ArticleResponse>()
        snapshot.appendSections([.main])
        snapshot.appendItems(articles)
        DispatchQueue.main.async { self.newsDataSource.apply(snapshot, animatingDifferences: true) }
    }
    
    @objc private func didPullToRefreshNews(_ sender: Any) {
        newsRefresher.beginRefreshing()
        Task { [weak self] in try? await self?.presenter?.viewLoaded() }
        newsRefresher.endRefreshing()
    }
}

extension TopHeadlinesViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let selectedHeadline = newsDataSource?.snapshot().itemIdentifiers[indexPath.item],
              let articleUrl = URL(string: selectedHeadline.url) else { return }
        
        let safariVC = SFSafariViewController(url: articleUrl)
        present(safariVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, contextMenuConfigurationForItemsAt indexPaths: [IndexPath], point: CGPoint) -> UIContextMenuConfiguration? {
        guard let presenter,
              let article = newsDataSource?.snapshot().itemIdentifiers[indexPaths.first?.item ?? 0] else { return nil }
        
        return UIContextMenuConfiguration(actionProvider: { suggestedActions in
            var primaryAction: UIAction
            
            let isFavorite = presenter.favoriteArticles.contains(article.computedId)
            let title = isFavorite ? "Unfavorite" : "Favorite"
            let icon = isFavorite ? "bookmark.slash.fill" : "bookmark.fill"
            if isFavorite {
                primaryAction = UIAction(title: title, image: UIImage(systemName: icon), attributes: .destructive) { _ in
                    Task { await presenter.saveHeadline(article: article) }
                }
            } else {
                primaryAction = UIAction(title: title, image: UIImage(systemName: icon)) { _ in
                    Task { await presenter.saveHeadline(article: article) }
                }
            }
            
            return UIMenu(title: "", children: [primaryAction])
        })
    }
}

#Preview {
    TopHeadlinesViewController(container: Container())
}
