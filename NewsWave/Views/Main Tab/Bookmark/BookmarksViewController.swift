//
//  BookmarksViewController.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import UIKit

class BookmarksViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
    }
    
    private func configureViewController() {
        view.backgroundColor = .systemBackground
        title = "Bookmarks"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
