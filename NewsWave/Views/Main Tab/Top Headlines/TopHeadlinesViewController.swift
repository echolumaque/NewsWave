//
//  TopHeadlinesViewController.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import UIKit

protocol TopHeadlinesViewProtocol: AnyObject, UIViewController {
    var presenter: TopHeadlinesPresenter? { get set }
    func updateNewsDataSource(articles: [Article])
}

class TopHeadlinesViewController: UIViewController {
    private lazy var newsCollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewLayoutHelper.listLayout(interGroupSpacing: 8)
    )
    private var newsDataSource: UICollectionViewDiffableDataSource<Section, Article>!
    private lazy var newsRefresher = UIRefreshControl()
    
    var presenter: (any TopHeadlinesPresenter)?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCollectionView()
        
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
        newsRefresher.addTarget(self, action: #selector(didPullToRefreshNews(_:)), for: .valueChanged)
        
        view.addSubview(newsCollectionView)
        newsCollectionView.pinToEdges(of: view)
        
        let articleCell = UICollectionView.CellRegistration<ArticleCell, Article> { [weak self] cell, indexPath, article in
            let totalItems = self?.newsDataSource.snapshot().numberOfItems(inSection: .main) ?? 0
            cell.set(article: article, isDividerVisible: indexPath.item != totalItems - 1)
        }
        newsDataSource = UICollectionViewDiffableDataSource(collectionView: newsCollectionView) { collectionView, indexPath, article in
            let articleCell = collectionView.dequeueConfiguredReusableCell(using: articleCell, for: indexPath, item: article)
            return articleCell
        }
    }
    
    func updateNewsDataSource(articles: [Article]) {
        var snapshot = NSDiffableDataSourceSnapshot<Section, Article>()
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

extension TopHeadlinesViewController: TopHeadlinesViewProtocol {
    
}

#Preview {
    TopHeadlinesViewController()
}
