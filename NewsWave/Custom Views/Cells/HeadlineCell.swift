//
//  HeadlineCell.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import UIKit

class HeadlineCell: UICollectionViewCell {
    private let horizontalPadding: CGFloat = 20
    private let verticalPadding: CGFloat = 8
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure() {
        
    }
    
    func set(article: Article) {
        
    }
}

#Preview {
    let cell = HeadlineCell()
    return cell
}
