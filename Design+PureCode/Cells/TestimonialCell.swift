//
//  TestimonialCell.swift
//  Design+PureCode
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class TestimonialCell: UICollectionViewCell {
    
    let cellType:TypeOfCell = .TestimonialCell
    
    let background:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 14
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 0, height: 10)
        view.layer.shadowRadius = 20
        return view
    }()
    
    let beginQuote:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 23).isActive = true
        image.heightAnchor.constraint(equalToConstant: 18).isActive = true
        image.image = UIImage(named: "Quote-Begin")
        return image
    }()
    
    let testimonialComment:UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.numberOfLines = 0
        text.textColor = .darkGray
        text.font = UIFont.systemFont(ofSize: 20)
        text.text = "Design+Code is a wake-up call. Why should I learn a web based technology or a deprecated tool when the obvious choice is to learn Xcode?"
        return text
    }()
    
    let endQuote:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 12).isActive = true
        image.heightAnchor.constraint(equalToConstant: 9).isActive = true
        image.image = UIImage(named: "Quote-End")
        return image
    }()
    
    let cardNameStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.spacing = 0
        return stackView
    }()
    
    let name:UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        name.textColor = .black
        name.text = "Jonathan"
        return name
    }()
    
    let job:UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.font = UIFont.systemFont(ofSize: 15)
        name.textColor = .darkGray
        name.adjustsFontSizeToFitWidth = true
        name.text = "Software Developer"
        return name
    }()
    
    let avatarImage:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 24).isActive = true
        image.widthAnchor.constraint(equalToConstant: 24).isActive = true
        image.image = UIImage(named: "avatar-martin-rgb")
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 12
        image.clipsToBounds = true
        return image
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        constraints()
    }
    
    func constraints() {
        self.addSubview(background)
        background.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        background.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        background.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.addSubview(beginQuote)
        beginQuote.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        beginQuote.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        self.addSubview(testimonialComment)
        testimonialComment.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        testimonialComment.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 53).isActive = true
        testimonialComment.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        self.addSubview(endQuote)
        endQuote.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        endQuote.topAnchor.constraint(equalTo: testimonialComment.bottomAnchor, constant: 0).isActive = true
        self.addSubview(cardNameStackView)
        cardNameStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 54).isActive = true
        cardNameStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        cardNameStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -14).isActive = true
        cardNameStackView.addArrangedSubview(name)
        cardNameStackView.addArrangedSubview(job)
        self.addSubview(avatarImage)
        avatarImage.trailingAnchor.constraint(equalTo: cardNameStackView.leadingAnchor, constant: -10).isActive = true
        avatarImage.centerYAnchor.constraint(equalTo: cardNameStackView.centerYAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

