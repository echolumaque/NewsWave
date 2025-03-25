//
//  CapsuleView.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import UIKit

//class CapsuleView: UIView {
//    override open class var layerClass: AnyClass { CAGradientLayer.classForCoder() }
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//    
//    convenience init(newsCategory: NewsCategory) {
//        self.init(frame: .zero)
//        configure(newsCategory: newsCategory)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        self.layer.cornerRadius = bounds.height / 2
//        self.layer.masksToBounds = true
//    }
//    
//    func configure(newsCategory: NewsCategory) {
//        translatesAutoresizingMaskIntoConstraints = false
//        let gradientLayer = layer as? CAGradientLayer
//        gradientLayer?.colors = CAGradientLayer.badgeColors(for: newsCategory)
//        gradientLayer?.startPoint = CGPoint(x: 0, y: 0.5)
//        gradientLayer?.endPoint = CGPoint(x: 1, y: 0.5)
//    }
//}
