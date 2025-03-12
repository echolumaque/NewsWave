//
//  UIView+Extension.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import UIKit

extension UIView {
    func pinToEdges(of superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            bottomAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
