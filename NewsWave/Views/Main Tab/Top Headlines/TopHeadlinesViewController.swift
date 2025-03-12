//
//  TopHeadlinesViewController.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import UIKit

protocol TopHeadlinesViewProtocol: AnyObject, UIViewController {
    var presenter: TopHeadlinesPresenter? { get set }
}

class TopHeadlinesViewController: UIViewController {
    private var newsCollectionView: UICollectionView!
    
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
        
        Task { [weak self] in await self?.presenter?.viewLoaded() }
    }
    
    private func configureViewController() {
        view.backgroundColor = .systemBackground
        title = "Top Headlines"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func configureCollectionView() {
        newsCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayoutHelper.listLayout(interGroupSpacing: 20))
        newsCollectionView.backgroundColor = .systemRed
        
        view.addSubview(newsCollectionView)
        newsCollectionView.pinToEdges(of: view)
    }
    
}

extension TopHeadlinesViewController: TopHeadlinesViewProtocol {
    
}

#Preview {
    TopHeadlinesViewController()
}
