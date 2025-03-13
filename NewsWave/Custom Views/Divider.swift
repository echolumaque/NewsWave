//
//  Divider.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import UIKit

class Divider: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .separator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
