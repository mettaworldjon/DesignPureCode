//
//  HomeViews.swift
//  Design+PureCode
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class HomeViews: UIView {
    
    /*********************************************************/
    /* Hero Controller */
    /*********************************************************/
    // Hero Scroll View
    let homeScrollView:UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .white
        return scrollView
    }()
    // Hero Veiw
    let heroViewContainer:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 452).isActive = true
        return view
    }()
    // Hero Image
    let heroImage:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Home")
        image.contentMode = .scaleAspectFill
        return image
    }()
    // Hero Title
    let heroTitle:UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Learn to design & code for iOS 12"
        title.textColor = .white
        title.numberOfLines = 0
        title.font = UIFont.systemFont(ofSize: 36, weight: .semibold)
        title.heightAnchor.constraint(equalToConstant: 172).isActive = true
        title.widthAnchor.constraint(equalToConstant: 160).isActive = true
        title.alpha = 1
        return title
    }()
    // Hero Device Image
    let heroDeviceImage:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 319).isActive = true
        image.widthAnchor.constraint(equalToConstant: 123).isActive = true
        image.image = UIImage(named: "Art-iPhoneX")
        image.contentMode = .scaleAspectFit
        image.alpha = 1
        return image
    }()
    // Play Button Container
    let playButtonContainer:UIVisualEffectView = {
        let container = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        container.translatesAutoresizingMaskIntoConstraints = false
        container.heightAnchor.constraint(equalToConstant: 50).isActive = true
        container.widthAnchor.constraint(equalToConstant: 50).isActive = true
        container.layer.cornerRadius = 25
        container.clipsToBounds = true
        container.alpha = 1
        return container
    }()
    // Play Button
    let playButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        btn.setImage(UIImage(named: "Action-Play-Small"), for: .normal)
        btn.contentMode = .scaleAspectFit
        btn.alpha = 1
        return btn
    }()
    // Hero Help
    let heroHelper:UIVisualEffectView = {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 130).isActive = true
        return view
    }()
    // Watch Stack View
    let watchStackView:UIStackView = {
        let title = UILabel()
        title.text = "WATCH"
        title.textColor = UIColor(red:0.68, green:0.61, blue:0.79, alpha:1.00)
        title.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        let bigTitle = UILabel()
        bigTitle.text = "44 hours"
        bigTitle.textColor = .white
        bigTitle.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        let smallTitle = UILabel()
        smallTitle.text = "of video lessons"
        smallTitle.textColor = .white
        smallTitle.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        let line = gradientColor(firstColor: UIColor(red:0.84, green:0.39, blue:0.85, alpha:1.00), secondColor: UIColor(red:0.99, green:0.25, blue:0.32, alpha:1.00))
        line.translatesAutoresizingMaskIntoConstraints = false
        line.widthAnchor.constraint(equalToConstant: 130).isActive = true
        line.heightAnchor.constraint(equalToConstant: 3).isActive = true
        line.layer.cornerRadius = 3
        let stackView = UIStackView(arrangedSubviews: [title,bigTitle,smallTitle,line])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        // stackView.spacing = 2 MAYBE
        return stackView
    }()
    // Search Stack View
    let searchStackView:UIStackView = {
        let title = UILabel()
        title.text = "SEARCH"
        title.textColor = UIColor(red:0.68, green:0.61, blue:0.79, alpha:1.00)
        title.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        let bigTitle = UILabel()
        bigTitle.text = "50,000"
        bigTitle.textColor = .white
        bigTitle.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        let smallTitle = UILabel()
        smallTitle.text = "words and images"
        smallTitle.textColor = .white
        smallTitle.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        let line = gradientColor(firstColor: UIColor(red:0.84, green:0.39, blue:0.85, alpha:1.00), secondColor: UIColor(red:0.99, green:0.25, blue:0.32, alpha:1.00))
        line.translatesAutoresizingMaskIntoConstraints = false
        line.widthAnchor.constraint(equalToConstant: 130).isActive = true
        line.heightAnchor.constraint(equalToConstant: 3).isActive = true
        line.layer.cornerRadius = 3
        let stackView = UIStackView(arrangedSubviews: [title,bigTitle,smallTitle,line])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        // stackView.spacing = 2 MAYBE
        return stackView
    }()
    // Watch Stack View
    let downloadStackView:UIStackView = {
        let title = UILabel()
        title.text = "DOWNLOAD"
        title.textColor = UIColor(red:0.68, green:0.61, blue:0.79, alpha:1.00)
        title.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        let bigTitle = UILabel()
        bigTitle.text = "10GB"
        bigTitle.textColor = .white
        bigTitle.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        let smallTitle = UILabel()
        smallTitle.text = "of source files"
        smallTitle.textColor = .white
        smallTitle.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.widthAnchor.constraint(equalToConstant: 130).isActive = true
        line.heightAnchor.constraint(equalToConstant: 3).isActive = true
        line.backgroundColor = UIColor(red:0.69, green:0.28, blue:0.73, alpha:1.0)
        line.layer.cornerRadius = 3
        let stackView = UIStackView(arrangedSubviews: [title,bigTitle,smallTitle,line])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        // stackView.spacing = 2 MAYBE
        return stackView
    }()
    // Horizontal Stack View
    let horizontalStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [])
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .equalSpacing
        stackView.spacing = 25
        return stackView
    }()
    
    /*********************************************************/
    /* Book Controller */
    /*********************************************************/
    // Book Container
    let bookViewContainer:UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.heightAnchor.constraint(equalToConstant: 348).isActive = true
        container.backgroundColor = .clear
        return container
    }()
    // Book
    let bookImageView:UIImageView = {
        let image = UIImageView(image: UIImage(named: "Art-Book"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 133).isActive = true
        image.heightAnchor.constraint(equalToConstant: 150).isActive = true
        image.layer.shadowOpacity = 0.25
        image.layer.shadowRadius = 10
        image.layer.shadowOffset = CGSize(width: 0, height: 0)
        return image
    }()
    // Book Title
    let bookTitle:UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.heightAnchor.constraint(equalToConstant: 53).isActive = true
        title.text = "An interative book on how to design and code an iOS 12 app"
        title.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        title.textColor = UIColor(red:0.25, green:0.25, blue:0.25, alpha:1.0)
        title.textAlignment = .center
        title.numberOfLines = 0
        return title
    }()
    // Book Subtitle
    let bookSubTitle:UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.heightAnchor.constraint(equalToConstant: 20).isActive = true
        title.text = "For Beginners and Designers"
        title.textColor = .lightGray
        title.textAlignment = .center
        title.numberOfLines = 0
        return title
    }()
    
    /*********************************************************/
    /* Chapter Controller */
    /*********************************************************/
    // Card View Container
    let cardViewContainer:UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0)
        container.translatesAutoresizingMaskIntoConstraints = false
        container.heightAnchor.constraint(equalToConstant: 380).isActive = true
        return container
    }()
    // Card View Container Title
    let cardContainerTitle:UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "CHAPTER 1: 12 SECTIONS"
        title.textColor = UIColor(red:0.25, green:0.25, blue:0.25, alpha:1.0)
        title.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        return title
    }()
    // Card Collection View
    let cardCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.heightAnchor.constraint(equalToConstant: 248).isActive = true
        cv.backgroundColor = .clear
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        cv.clipsToBounds = false
        return cv
    }()
    let cardId = "cardID"
    
    /*********************************************************/
    /* Testimonial Controller */
    /*********************************************************/
    // Testimonial Container View
    let testimonialViewContainer:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 524).isActive = true
        view.backgroundColor = UIColor(red:0.20, green:0.22, blue:0.26, alpha:1.0)
        return view
    }()
    
    // Testimonial Collection View
    let testimonialCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.heightAnchor.constraint(equalToConstant: 248).isActive = true
        cv.backgroundColor = .clear
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        cv.clipsToBounds = false
        return cv
    }()
    let testimonialId = "testimonialID"
    // Stack View
    let statStackView:UIStackView = {
        let text1 = UILabel()
        text1.text = "26,000 people"
        text1.textColor = .white
        text1.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        let text2 = UILabel()
        text2.text = "are learning from Design+Code"
        text2.font = UIFont.systemFont(ofSize: 15)
        text2.textColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:0.50)
        let line = gradientColor(firstColor: UIColor(red:0.84, green:0.39, blue:0.85, alpha:1.00), secondColor: UIColor(red:0.99, green:0.25, blue:0.32, alpha:1.00))
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 4).isActive = true
        line.widthAnchor.constraint(equalToConstant: 220).isActive = true
        line.layer.cornerRadius = 1.5
        let stack = UIStackView(arrangedSubviews: [text1,text2,line])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .equalCentering
        stack.spacing = 3
        return stack
    }()
    // Logo Stat View
    let logoStackView:UIStackView = {
        let googleImage = UIImageView(image: UIImage(named: "Logo-Google"))
        googleImage.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
        googleImage.contentMode = .scaleAspectFit
        let appleImage = UIImageView(image: UIImage(named: "Logo-Apple"))
        appleImage.frame = CGRect(x: 0, y: 0, width: 36, height: 44)
        appleImage.contentMode = .scaleAspectFit
        let stripeImage = UIImageView(image: UIImage(named: "Logo-Stripe"))
        stripeImage.frame = CGRect(x: 0, y: 0, width: 81, height: 44)
        stripeImage.contentMode = .scaleAspectFit
        let stack = UIStackView(arrangedSubviews: [googleImage,appleImage,stripeImage])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 50
        return stack
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        heroConfigure()
        bookConfigure()
        chapterCollectionConstraints()
        testimonialConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func testimonialConstraints() {
        // Testimonial Container View
        homeScrollView.addSubview(testimonialViewContainer)
        NSLayoutConstraint.activate([
            testimonialViewContainer.topAnchor.constraint(equalTo: cardViewContainer.bottomAnchor, constant: 0),
            testimonialViewContainer.widthAnchor.constraint(equalTo: homeScrollView.widthAnchor, constant: 0)
            ])
        // Testimonial Collection View
        homeScrollView.addSubview(testimonialCollectionView)
        NSLayoutConstraint.activate([
            testimonialCollectionView.topAnchor.constraint(equalTo: testimonialViewContainer.topAnchor, constant: 50),
            testimonialCollectionView.widthAnchor.constraint(equalTo: homeScrollView.widthAnchor),
            testimonialCollectionView.centerXAnchor.constraint(equalTo: homeScrollView.centerXAnchor)
            ])
        // Stat View Stack
        homeScrollView.addSubview(statStackView)
        NSLayoutConstraint.activate([
            statStackView.topAnchor.constraint(equalTo: testimonialCollectionView.bottomAnchor, constant: 50),
            statStackView.centerXAnchor.constraint(equalTo: testimonialViewContainer.centerXAnchor, constant: 0)
            ])
        // Logo Stack View
        homeScrollView.addSubview(logoStackView)
        NSLayoutConstraint.activate([
            logoStackView.bottomAnchor.constraint(equalTo: testimonialViewContainer.bottomAnchor, constant: -33),
            logoStackView.centerXAnchor.constraint(equalTo: testimonialViewContainer.centerXAnchor, constant: 0)
            ])
    }
    
    func chapterCollectionConstraints() {
        // Card View Container
        homeScrollView.addSubview(cardViewContainer)
        NSLayoutConstraint.activate([
            cardViewContainer.centerXAnchor.constraint(equalTo: homeScrollView.centerXAnchor, constant: 0),
            cardViewContainer.topAnchor.constraint(equalTo: bookViewContainer.bottomAnchor, constant: 0),
            cardViewContainer.leadingAnchor.constraint(equalTo: bookViewContainer.leadingAnchor, constant: 0),
            cardViewContainer.trailingAnchor.constraint(equalTo: bookViewContainer.trailingAnchor, constant: 0)
            ])
        // Card View Container Title
        cardViewContainer.addSubview(cardContainerTitle)
        NSLayoutConstraint.activate([
            cardContainerTitle.topAnchor.constraint(equalTo: cardViewContainer.topAnchor, constant: 50),
            cardContainerTitle.leadingAnchor.constraint(equalTo: cardViewContainer.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            cardContainerTitle.trailingAnchor.constraint(equalTo: cardViewContainer.safeAreaLayoutGuide.trailingAnchor, constant: -20)
            ])
        // Card Collection View
        cardViewContainer.addSubview(cardCollectionView)
        NSLayoutConstraint.activate([
            cardCollectionView.bottomAnchor.constraint(equalTo: cardViewContainer.bottomAnchor, constant: -50),
            cardCollectionView.leadingAnchor.constraint(equalTo: cardViewContainer.leadingAnchor),
            cardCollectionView.trailingAnchor.constraint(equalTo: cardViewContainer.trailingAnchor)
            ])
    }
    
    func bookConfigure() {
        // Book View Container
        homeScrollView.addSubview(bookViewContainer)
        NSLayoutConstraint.activate([
            bookViewContainer.topAnchor.constraint(equalTo: heroViewContainer.bottomAnchor, constant: 0),
            bookViewContainer.centerXAnchor.constraint(equalTo: heroViewContainer.centerXAnchor, constant: 0),
            bookViewContainer.widthAnchor.constraint(equalTo: heroViewContainer.widthAnchor, constant: 0)
            ])
        // Book Image View
        bookViewContainer.addSubview(bookImageView)
        NSLayoutConstraint.activate([
            bookImageView.centerXAnchor.constraint(equalTo: bookViewContainer.centerXAnchor, constant: 0),
            bookImageView.topAnchor.constraint(equalTo: bookViewContainer.topAnchor, constant: 50)
            ])
        // Book Title
        bookViewContainer.addSubview(bookTitle)
        NSLayoutConstraint.activate([
            bookTitle.centerXAnchor.constraint(equalTo: bookViewContainer.centerXAnchor, constant: 0),
            bookTitle.topAnchor.constraint(equalTo: bookImageView.bottomAnchor, constant: 16),
            bookTitle.leadingAnchor.constraint(equalTo: bookViewContainer.leadingAnchor, constant: 32),
            bookTitle.trailingAnchor.constraint(equalTo: bookViewContainer.trailingAnchor, constant: -32)
            ])
        // Book Sub Title
        bookViewContainer.addSubview(bookSubTitle)
        NSLayoutConstraint.activate([
            bookSubTitle.centerXAnchor.constraint(equalTo: bookViewContainer.centerXAnchor, constant: 0),
            bookSubTitle.topAnchor.constraint(equalTo: bookTitle.bottomAnchor, constant: 9)
            ])
    }
    
    func heroConfigure() {
        // Scroll View
        self.addSubview(homeScrollView)
        NSLayoutConstraint.activate([
            homeScrollView.topAnchor.constraint(equalTo: self.topAnchor, constant: -45),
            homeScrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            homeScrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            homeScrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
            ])
        homeScrollView.contentSize.height = 4000
        // Hero View
        homeScrollView.addSubview(heroViewContainer)
        NSLayoutConstraint.activate([
            heroViewContainer.topAnchor.constraint(equalTo: homeScrollView.topAnchor, constant: 0),
            heroViewContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            heroViewContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0)
            ])
        heroViewContainer.backgroundColor = .darkGray
        // Hero Image Background
        heroViewContainer.addSubview(heroImage)
        NSLayoutConstraint.activate([
            heroImage.centerXAnchor.constraint(equalTo: heroViewContainer.centerXAnchor, constant: 0),
            heroImage.topAnchor.constraint(equalTo: heroViewContainer.topAnchor, constant: -30),
            heroImage.leadingAnchor.constraint(equalTo: heroViewContainer.leadingAnchor, constant: 0),
            heroImage.trailingAnchor.constraint(equalTo: heroViewContainer.trailingAnchor, constant: 0),
            heroImage.bottomAnchor.constraint(equalTo: heroViewContainer.bottomAnchor, constant: 0)
            ])
        // Hero Text
        heroViewContainer.addSubview(heroTitle)
        NSLayoutConstraint.activate([
            heroTitle.centerXAnchor.constraint(equalTo: heroViewContainer.centerXAnchor, constant: -70),
            heroTitle.centerYAnchor.constraint(equalTo: heroViewContainer.centerYAnchor, constant: -25)
            ])
        // Hero Device
        heroViewContainer.addSubview(heroDeviceImage)
        NSLayoutConstraint.activate([
            heroDeviceImage.centerXAnchor.constraint(equalTo: heroViewContainer.centerXAnchor, constant: 70),
            heroDeviceImage.centerYAnchor.constraint(equalTo: heroViewContainer.centerYAnchor, constant: 0)
            ])
        // Play Button Container
        heroViewContainer.addSubview(playButtonContainer)
        NSLayoutConstraint.activate([
            playButtonContainer.centerXAnchor.constraint(equalTo: heroDeviceImage.centerXAnchor, constant: -5),
            playButtonContainer.centerYAnchor.constraint(equalTo: heroDeviceImage.centerYAnchor, constant: -20)
            ])
        // Play Button
        heroViewContainer.addSubview(playButton)
        NSLayoutConstraint.activate([
            playButton.centerXAnchor.constraint(equalTo: playButtonContainer.centerXAnchor, constant: 1),
            playButton.centerYAnchor.constraint(equalTo: playButtonContainer.centerYAnchor, constant: 2)
            ])
        // Hero Helper
        heroViewContainer.addSubview(heroHelper)
        NSLayoutConstraint.activate([
            heroHelper.leadingAnchor.constraint(equalTo: heroViewContainer.leadingAnchor, constant: 0),
            heroHelper.trailingAnchor.constraint(equalTo: heroViewContainer.trailingAnchor, constant: 0),
            heroHelper.bottomAnchor.constraint(equalTo: heroViewContainer.bottomAnchor, constant: 0)
            ])
        // Horizontal Stack View
        heroHelper.contentView.addSubview(horizontalStackView)
        NSLayoutConstraint.activate([
            horizontalStackView.topAnchor.constraint(equalTo: heroHelper.topAnchor, constant: 18),
            horizontalStackView.bottomAnchor.constraint(equalTo: heroHelper.bottomAnchor, constant: -22),
            horizontalStackView.centerXAnchor.constraint(equalTo: heroHelper.centerXAnchor, constant: 0)
            ])
        horizontalStackView.addArrangedSubview(watchStackView)
        horizontalStackView.addArrangedSubview(searchStackView)
    }
    
    
}

