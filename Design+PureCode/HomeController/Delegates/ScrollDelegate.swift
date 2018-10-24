//
//  ScrollDelegate.swift
//  Design+PureCode
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

extension HomeController: UIScrollViewDelegate {
    func scrollDelegate() {
        ui.homeScrollView.delegate = self
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        if offsetY < 0 {
            ui.heroViewContainer.transform = CGAffineTransform(translationX: 0, y: offsetY + 25)
            ui.heroImage.transform = CGAffineTransform(translationX: 0, y: -offsetY/5)
            ui.playButtonContainer.transform = CGAffineTransform(translationX: 0, y: -offsetY/5)
            ui.playButton.transform = CGAffineTransform(translationX: 0, y: -offsetY/5)
            ui.heroTitle.transform = CGAffineTransform(translationX: 0, y: -offsetY/3)
            ui.heroDeviceImage.transform = CGAffineTransform(translationX: 0, y: -offsetY/4)
            ui.heroHelper.transform = CGAffineTransform(translationX: 0, y: -offsetY/4)
        }
        if let collectionView = scrollView as? UICollectionView {
            if collectionView == ui.cardCollectionView {
                // Animate Background
                for cell in collectionView.visibleCells as! [CardChapterCell] {
                    let indexPath = collectionView.indexPath(for: cell)!
                    let attributes = collectionView.layoutAttributesForItem(at: indexPath)!
                    let cellFrame = collectionView.convert(attributes.frame, to: view)
                    let translationX = cellFrame.origin.x / 5
                    cell.backgroundImage.transform = CGAffineTransform(translationX: translationX, y: 0)
                    cell.layer.transform = animateCell(cellFrame: cellFrame)
                }
            }
        }
    }
}
