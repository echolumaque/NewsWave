//
//  UICollectionViewLayout+Extension.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import UIKit

extension UICollectionViewLayout {
    func createListFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: width, height: 250)
        
        return flowLayout
    }
    
    func listLayout(
        interGroupSpacing: CGFloat,
        leadingAction: ((IndexPath) -> UISwipeActionsConfiguration)? = nil,
        trailingAction: ((IndexPath) -> UISwipeActionsConfiguration)? = nil
    ) -> UICollectionViewCompositionalLayout {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, layoutEnvironment in
            var listConfig = UICollectionLayoutListConfiguration(appearance: .plain)
            listConfig.showsSeparators = false
            listConfig.leadingSwipeActionsConfigurationProvider = leadingAction
            listConfig.trailingSwipeActionsConfigurationProvider = trailingAction
            
            let section = NSCollectionLayoutSection.list(using: listConfig, layoutEnvironment: layoutEnvironment)
            section.interGroupSpacing = interGroupSpacing
            return section
        }
        
        return layout
    }
    
    func createVerticalCompositionalLayout(
        itemSize: NSCollectionLayoutSize,
        groupSize: NSCollectionLayoutSize,
        interGroupSpacing: CGFloat
    ) -> UICollectionViewCompositionalLayout {
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = interGroupSpacing
        
        return UICollectionViewCompositionalLayout(section: section)
    }
    
    func createHorizontalCompositionalLayout(
        itemSize: NSCollectionLayoutSize,
        groupSize: NSCollectionLayoutSize,
        interGroupSpacing: CGFloat,
        visibleItemsInvalidationHandler: NSCollectionLayoutSectionVisibleItemsInvalidationHandler? = nil
    ) -> UICollectionViewCompositionalLayout {
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        // Create the section with the group and enable horizontal scrolling
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.interGroupSpacing = interGroupSpacing
        section.visibleItemsInvalidationHandler = visibleItemsInvalidationHandler
        
        return UICollectionViewCompositionalLayout(section: section)
    }
}
