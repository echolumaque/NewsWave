//
//  CustomSpacer.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/14/25.
//

import UIKit

class CustomSpacer: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(axis: NSLayoutConstraint.Axis) {
        self.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setContentHuggingPriority(.defaultLow, for: axis)
        setContentCompressionResistancePriority(.defaultLow, for: axis)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
