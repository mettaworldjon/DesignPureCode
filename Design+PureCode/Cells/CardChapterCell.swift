//
//  CardChapterCells.swift
//  Design+PureCode
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class CardChapterCell: UICollectionViewCell {
    
    var cellType:TypeOfCell = .CardChapterCell1
    
    let firstView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 14
        view.layer.shadowOpacity = 0.25
        view.layer.shadowOffset = CGSize(width: 0, height: 10)
        view.layer.shadowRadius = 20
        view.backgroundColor = .white
        return view
    }()
    let secondView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 14
        view.clipsToBounds = true
        return view
    }()
    let backgroundImage:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "ios11")
        image.contentMode = .scaleAspectFill
        return image
    }()
    let title:UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Learn iOS 12 Design"
        title.font = UIFont.systemFont(ofSize: 32, weight: .semibold)
        title.textColor = .white
        title.numberOfLines = 3
        return title
    }()
    let subTitle:UILabel = {
        let sub = UILabel()
        sub.translatesAutoresizingMaskIntoConstraints = false
        sub.text = "A complete guide to colors, typography and layout for iOS 12"
        sub.textColor = .white
        sub.font = UIFont.systemFont(ofSize: 17)
        sub.numberOfLines = 3
        return sub
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.clipsToBounds = false
        setConstraints()
    }
    
    func setConstraints() {
        self.addSubview(firstView)
        firstView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        firstView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        firstView.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 0).isActive = true
        firstView.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 0).isActive = true
        firstView.addSubview(secondView)
        secondView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        secondView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        secondView.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 0).isActive = true
        secondView.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 0).isActive = true
        secondView.addSubview(backgroundImage)
        backgroundImage.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        backgroundImage.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 0).isActive = true
        backgroundImage.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 0).isActive = true
        backgroundImage.addSubview(title)
        title.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 20).isActive = true
        title.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 20).isActive = true
        title.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: -20).isActive = true
        backgroundImage.addSubview(subTitle)
        subTitle.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 20).isActive = true
        subTitle.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: -20).isActive = true
        subTitle.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: -20).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

