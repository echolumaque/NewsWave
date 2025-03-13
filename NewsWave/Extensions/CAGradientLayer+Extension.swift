//
//  CAGradientLayer+Extension.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import UIKit

extension CAGradientLayer {
    static func gradientLayer(for style: NewsCategory, in frame: CGRect) -> Self {
        let layer = Self()
        layer.colors = badgeColors(for: style)
        layer.frame = frame
        return layer
    }
    
    static func badgeColors(for style: NewsCategory) -> [CGColor] {
        let color: (begin: Int, end: Int) = switch style {
        case .business: (0x1E90FF, 0x003366)         // Blue gradient
        case .crime:  (0xFF4136, 0x000000)         // Red to Black
        case .domestic: (0xFF851B, 0xFFDC00)         // Warm Orange to Yellow
        case .education: (0x8A2BE2, 0x1E90FF)         // Purple to Blue
        case .entertainment: (0xFF69B4, 0x8A2BE2)         // Pink to Purple
        case .environment: (0x27AE60, 0x16A085)         // Green gradient
        case .food: (0xFF851B, 0xFF4136)         // Orange to Red
        case .health:  (0x2ECC71, 0x3498DB)         // Green to Blue
        case .lifestyle: (0xFFB6C1, 0xFFD700)         // Light Pink to Gold
        case .other: (0xCCCCCC, 0x999999)         // Neutral grays
        case .politics: (0x007AFF, 0xFF2D55)         // Blue to Red
        case .science: (0x00FFFF, 0x4B0082)         // Cyan to Indigo
        case .sports: (0xFF4500, 0xDC143C)         // OrangeRed to Crimson
        case .technology: (0x4A90E2, 0x9013FE)         // Blue to Purple
        case .top: (0xFFD700, 0xFFA500)         // Gold to Orange
        case .tourism: (0x1ABC9C, 0x3498DB)         // Teal to Blue
        case .world: (0x2980B9, 0x27AE60)         // Blue to Green
        }
        
        return [UIColor(hex: color.begin).cgColor, UIColor(hex: color.end).cgColor]
    }
}
