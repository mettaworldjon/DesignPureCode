//
//  HomeDelegates.swift
//  Design+PureCode
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func registerCells() {
        ui.cardCollectionView.register(CardChapterCell.self, forCellWithReuseIdentifier: ui.cardId)
        ui.testimonialCollectionView.register(TestimonialCell.self, forCellWithReuseIdentifier: ui.testimonialId)
    }
    
    func collectionDelegates() {
        ui.cardCollectionView.delegate = self
        ui.cardCollectionView.dataSource = self
        ui.testimonialCollectionView.delegate = self
        ui.testimonialCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == ui.cardCollectionView {
            return Data.sections.count
        } else if collectionView == ui.testimonialCollectionView {
            return Data.testimonials.count
        } else {
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == ui.cardCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ui.cardId, for: indexPath) as! CardChapterCell
            let section = Data.sections[indexPath.row]
            cell.title.text = section["title"]
            cell.subTitle.text = section["caption"]
            cell.backgroundImage.image = UIImage(named: section["image"] ?? "ios11")
             cell.layer.transform = animateCell(cellFrame: cell.frame)
            cell.title.font = UIFont.systemFont(ofSize: 38, weight: .semibold)
            if indexPath.item == 0{
                cell.title.font = UIFont.systemFont(ofSize: 38, weight: .semibold)
            }
            return cell
        } else if collectionView == ui.testimonialCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ui.testimonialId, for: indexPath) as! TestimonialCell
            let testimonial = Data.testimonials[indexPath.row]
            cell.testimonialComment.text = testimonial["text"]
            cell.name.text = testimonial["name"]
            cell.job.text = testimonial["job"]
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    /*********************************************************/
    /* Cell Size */
    /*********************************************************/
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 304, height: 248)
    }
    
    /*********************************************************/
    /* Insets for Collection */
    /*********************************************************/
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        // Card Collection View
        if collectionView == ui.cardCollectionView {
            return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        } else if collectionView == ui.testimonialCollectionView {
            return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        // Testimonial Collection View
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    /*********************************************************/
    /* Line Spacing */
    /*********************************************************/
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == ui.cardCollectionView {
            return 0
        }
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? CardChapterCell {
            if cell.cellType == .CardChapterCell1 {
                let destination = ChapterController()
                destination.section = Data.sections[indexPath.row]
                destination.sectionCount = Data.sections.count
                destination.indexPath = indexPath.row
                destination.transitioningDelegate = self
                let attributes = ui.cardCollectionView.layoutAttributesForItem(at: indexPath)
                let cellFrame = ui.cardCollectionView.convert((attributes?.frame)!, to: view)
                
                presentSectionViewController.cellFrame = cellFrame
                presentSectionViewController.cellTransform = animateCell(cellFrame: cellFrame)

                present(destination, animated: true) {
                    // DO SOMETHING
                }
            }
        }
    }
    
    // 3D Animate
    func animateCell(cellFrame: CGRect) -> CATransform3D {
        let angleFromX = Double((-cellFrame.origin.x) / 10)
        let angle = CGFloat((angleFromX * Double.pi) / 180.0)
        var transform = CATransform3DIdentity
        transform.m34 = -1.0/1000
        let rotation = CATransform3DRotate(transform, angle, 0, 1, 0)
        var scaleFromX = (1000 - (cellFrame.origin.x - 200)) / 1000
        let scaleMax: CGFloat = 1.0
        let scaleMin: CGFloat = 0.6
        if scaleFromX > scaleMax {
            scaleFromX = scaleMax
        }
        if scaleFromX < scaleMin {
            scaleFromX = scaleMin
        }
        let scale = CATransform3DScale(CATransform3DIdentity, scaleFromX, scaleFromX, 1)
        return CATransform3DConcat(rotation, scale)
    }
}

extension HomeController: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return presentSectionViewController
    }
    
}
