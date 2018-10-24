//
//  PresentSectionController.swift
//  Design+PureCode
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class PresentSectionViewController: NSObject, UIViewControllerAnimatedTransitioning {
    
    var cellFrame:CGRect!
    var cellTransform:CATransform3D!
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.4
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let destination = transitionContext.viewController(forKey: .to) as! ChapterController
        let containerView = transitionContext.containerView
        
        containerView.addSubview(destination.view)
        
        // Initial State
        
        let widthConstraint = destination.scrollView.widthAnchor.constraint(equalToConstant: 304)
        let heightConstraint = destination.scrollView.heightAnchor.constraint(equalToConstant: 248)
        let bottomConstraint = destination.scrollView.bottomAnchor.constraint(equalTo: destination.heroView.bottomAnchor)
        
        NSLayoutConstraint.activate([widthConstraint,heightConstraint,bottomConstraint])
        
        let translate = CATransform3DMakeTranslation(cellFrame.origin.x, cellFrame.origin.y, 0.0)
        let transform = CATransform3DConcat(translate, cellTransform)
        
        destination.view.layer.transform = transform
        destination.view.layer.zPosition = 999
        
        containerView.layoutIfNeeded()
        
        destination.scrollView.layer.cornerRadius = 14
        destination.scrollView.layer.shadowOpacity = 0.25
        destination.scrollView.layer.shadowRadius = 20
        
        let moveUpTransform = CGAffineTransform(translationX: 0, y: -0.7)
        let scaleUpTransform = CGAffineTransform(scaleX: 2, y: 2)
        let removeFromViewTransform = moveUpTransform.concatenating(scaleUpTransform)
        
        destination.dismissContainer.alpha = 0
        destination.dismissContainer.transform = removeFromViewTransform
        
        destination.progressTextContainer.alpha = 0
        destination.progressTextContainer.transform = removeFromViewTransform
        
        let animator = UIViewPropertyAnimator(duration: 0.4, dampingRatio: 0.9) {
            // Final State
            
            NSLayoutConstraint.deactivate([widthConstraint,heightConstraint,bottomConstraint])
            
            destination.view.layer.transform = CATransform3DIdentity
            
            containerView.layoutIfNeeded()
            
            destination.scrollView.layer.cornerRadius = 0
            
            destination.dismissContainer.alpha = 1
            destination.dismissContainer.transform = .identity
            
            destination.progressTextContainer.alpha = 1
            destination.progressTextContainer.transform = .identity
            
            let scaleTitleTranform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            let moveTitleTranform = CGAffineTransform(translationX: 30, y: 10)
            
            let titleTranform = scaleTitleTranform.concatenating(moveTitleTranform)
            
            destination.titleView.transform = titleTranform
            
            
            
        }
        
        animator.addCompletion {
            (finished) in
            
            // Completion
            
            transitionContext.completeTransition(true)
        }
        
        animator.startAnimation()
    }
}
