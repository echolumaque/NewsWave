//
//  BookmarksViewController.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Swinject
import UIKit

protocol BookmarksViewProtocol: AnyObject, UIViewController {
    var presenter: BookmarksPresenter? { get set }
    func updateDataSource(articles: [Article])
}

class BookmarksViewController: UIViewController, BookmarksViewProtocol {
    private let container: Resolver
    private lazy var savedArticesCollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewLayoutHelper.listLayout(interGroupSpacing: 8)
    )
    private var savedArticlesDataSource: UICollectionViewDiffableDataSource<Section, Article>!
    
    var presenter: (any BookmarksPresenter)?
    
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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Task { [weak self] in await self?.presenter?.getSavedArticles() }
    }
    
    override func updateContentUnavailableConfiguration(using state: UIContentUnavailableConfigurationState) {
        if savedArticlesDataSource?.snapshot().itemIdentifiers.isEmpty ?? false {
            var config = UIContentUnavailableConfiguration.empty()
            config.image = UIImage(systemName: "bookmark.slash.fill")
            config.text = "No favorite articles"
            config.secondaryText = "You don't have any favorite articles at the moment. You can add one by long-pressing an article."
            contentUnavailableConfiguration = config
        } else {
            contentUnavailableConfiguration = nil
        }
    }
    
    private func configureViewController() {
        view.backgroundColor = .systemBackground
        title = "Bookmarks"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func configureCollectionView() {
        savedArticesCollectionView.delegate = self
        view.addSubview(savedArticesCollectionView)
        savedArticesCollectionView.pinToEdges(of: view)
        
        let articleCell = UICollectionView.CellRegistration<HeadlineCell, Article> { [weak self] cell, indexPath, article in
            guard let self else { return }
            
            let totalItems = savedArticlesDataSource.snapshot().numberOfItems(inSection: .main)
            cell.set(article: article.toArticleResponse, container: container)
            cell.divider.isHidden = indexPath.item + 1 == totalItems
        }
        savedArticlesDataSource = UICollectionViewDiffableDataSource(collectionView: savedArticesCollectionView) { collectionView, indexPath, item in
            let articleCell = collectionView.dequeueConfiguredReusableCell(using: articleCell, for: indexPath, item: item)
            return articleCell
        }
    }
    
    func updateDataSource(articles: [Article]) {
        var snapshot = NSDiffableDataSourceSnapshot<Section, Article>()
        snapshot.appendSections([.main])
        snapshot.appendItems(articles)
        DispatchQueue.main.async {
            self.savedArticlesDataSource.apply(snapshot, animatingDifferences: true)
            self.setNeedsUpdateContentUnavailableConfiguration()
        }
    }
}

extension BookmarksViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, contextMenuConfigurationForItemsAt indexPaths: [IndexPath], point: CGPoint) -> UIContextMenuConfiguration? {
        guard let presenter,
              let article = savedArticlesDataSource?.snapshot().itemIdentifiers[indexPaths.first?.item ?? 0] else { return nil }
        
        return UIContextMenuConfiguration(actionProvider: { suggestedActions in
            let primaryAction = UIAction(title: "Unfavorite", image: UIImage(systemName: "bookmark.slash.fill"), attributes: .destructive) { [weak self] _ in
                guard let self else { return }
                
                var snapshot = savedArticlesDataSource.snapshot()
                snapshot.deleteItems([article])
                DispatchQueue.main.async {
                    self.savedArticlesDataSource.apply(snapshot, animatingDifferences: true)
                    self.setNeedsUpdateContentUnavailableConfiguration()
                }
                
                Task { await presenter.unsaveArtcle(article: article) }
            }
            
            return UIMenu(title: "", children: [primaryAction])
        })
    }
}
