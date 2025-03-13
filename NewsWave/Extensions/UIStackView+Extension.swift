//
//  UIStackView+Extension.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/14/25.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        for view in views { addArrangedSubview(view) }
    }
}
