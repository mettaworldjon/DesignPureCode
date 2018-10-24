//
//  ChapterController.swift
//  Design+Code
//
//  Created by Jonathan Dowdell on 10/7/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class ChapterController: UIViewController {
    /*******************************************/
    /* Views */
    /*******************************************/
    /* Progress Container */
    let scrollView:UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .white
        return scrollView
    }()
    var scrollBottomAnchor1:NSLayoutConstraint?
    var scrollTrailingAnchor1:NSLayoutConstraint?
    
    /* Scroll View */
    let progressTextContainer:UIVisualEffectView = {
        let blur = UIBlurEffect(style: .dark)
        let container = UIVisualEffectView(effect: blur)
        container.translatesAutoresizingMaskIntoConstraints = false
        container.layer.cornerRadius = 12
        container.clipsToBounds = true
        container.alpha = 0
        return container
    }()
    
    /* Dismiss Button */
    let dismissContainer:UIVisualEffectView = {
        let blur = UIBlurEffect(style: .dark)
        let container = UIVisualEffectView(effect: blur)
        container.translatesAutoresizingMaskIntoConstraints = false
        container.heightAnchor.constraint(equalToConstant: 36).isActive = true
        container.widthAnchor.constraint(equalToConstant: 36).isActive = true
        container.layer.cornerRadius = 14
        container.clipsToBounds = true
        let dismissBtn = UIButton(type: .custom)
        dismissBtn.translatesAutoresizingMaskIntoConstraints = false
        dismissBtn.setImage(UIImage(named: "Action-Close"), for: .normal)
        dismissBtn.addTarget(self, action: #selector(dismissChapter), for: .touchUpInside)
        dismissBtn.contentMode = .scaleAspectFit
        dismissBtn.heightAnchor.constraint(equalToConstant: 36).isActive = true
        dismissBtn.widthAnchor.constraint(equalToConstant: 36).isActive = true
        container.contentView.addSubview(dismissBtn)
        container.alpha = 0
        return container
    }()
    
    /* Progress Text */
    lazy var progressText:UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "1 / 12"
        text.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        text.textColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:0.70)
        return text
    }()

    /* Hero View */
    let heroView:UIView = {
        let hero = UIView()
        hero.translatesAutoresizingMaskIntoConstraints = false
        hero.backgroundColor = .darkGray
        return hero
    }()
    var heroBottomAnchor:NSLayoutConstraint?
    var heroHeightAnchor:NSLayoutConstraint?
    
    
    
    /* Background View */
    let backgroundCoverImage:UIImageView = {
        let background = UIImageView(image: UIImage(named: "iPhone-X1"))
        background.translatesAutoresizingMaskIntoConstraints = false
        background.contentMode = .scaleAspectFill
        return background
    }()
    
    
    /* Title View */
    let titleView:UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Learn iOS 11 Design"
        title.font = UIFont.systemFont(ofSize: 38, weight: .semibold)
        title.textColor = .white
        title.numberOfLines = 0
        return title
    }()
    
    /* Sub Title View */
    let subTitleView:UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Learn colors, typography and layout for iOS"
        title.font = UIFont.systemFont(ofSize: 18)
        title.textColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:0.80)
        title.numberOfLines = 0
        return title
    }()
    
    /* Body Text */
    let bodyText:UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Three years ago Apple…"
        title.font = UIFont.systemFont(ofSize: 19)
        title.textColor = .darkGray
        title.numberOfLines = 0
        return title
    }()
    /*******************************************/
    
    /*******************************************/
    /* Data Transports */
    /*******************************************/
    var section = [String:String]() {
        didSet {
            titleView.text = section["title"]
            subTitleView.text = section["caption"]
            bodyText.text = section["body"]
            backgroundCoverImage.image = UIImage(named: "\(section["image"] ?? "iPhone-X1")")
        }
    }
    var sectionCount:Int?
    var indexPath:Int?
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        constraints()
    }
}
