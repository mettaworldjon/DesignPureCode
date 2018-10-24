//
//  Chapter+Constaints.swift
//  Design+Code
//
//  Created by Jonathan Dowdell on 10/7/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

extension ChapterController {
    /*********************************************************/
    /* Configure Constraints */
    /*********************************************************/
    func constraints() {
        
        /*********************************************************/
        /* Scroll View Constraints */
        /*********************************************************/
        view.addSubview(scrollView)
        // scrollView.contentSize.height = 4000
        scrollBottomAnchor1 = scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        scrollTrailingAnchor1 = scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        scrollBottomAnchor1!.priority = UILayoutPriority(rawValue: 999)
        scrollTrailingAnchor1!.priority = UILayoutPriority(rawValue: 999)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollBottomAnchor1!, scrollTrailingAnchor1!
            ])
        
        /*********************************************************/
        /* Hero View Constraints */
        /*********************************************************/
        scrollView.addSubview(heroView)
        heroHeightAnchor = heroView.heightAnchor.constraint(equalToConstant: 420)
        heroHeightAnchor!.priority = UILayoutPriority(rawValue: 999)
        NSLayoutConstraint.activate([
            heroView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            heroView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: 0),
            heroView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -500),
            heroView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            heroHeightAnchor!
            ])
        
        /*********************************************************/
        /* Hero Background View */
        /*********************************************************/
        heroView.addSubview(backgroundCoverImage)
        NSLayoutConstraint.activate([
            backgroundCoverImage.centerXAnchor.constraint(equalTo: heroView.centerXAnchor, constant: 0),
            backgroundCoverImage.centerYAnchor.constraint(equalTo: heroView.centerYAnchor, constant: 0),
            backgroundCoverImage.heightAnchor.constraint(equalTo: heroView.heightAnchor, constant: 0),
            backgroundCoverImage.widthAnchor.constraint(equalTo: heroView.widthAnchor, constant: 0)
            ])
        
        /*********************************************************/
        /* Progress Container */
        /*********************************************************/
        heroView.addSubview(progressTextContainer)
        NSLayoutConstraint.activate([
            progressTextContainer.topAnchor.constraint(equalTo: heroView.safeAreaLayoutGuide.topAnchor, constant: 20),
            progressTextContainer.leadingAnchor.constraint(equalTo: heroView.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            progressTextContainer.heightAnchor.constraint(equalToConstant: 36),
            progressTextContainer.widthAnchor.constraint(equalToConstant: 59)
            ])
        
        /*********************************************************/
        /* Progress Text */
        /*********************************************************/
        progressTextContainer.contentView.addSubview(progressText)
        NSLayoutConstraint.activate([
            progressText.centerXAnchor.constraint(equalTo: progressTextContainer.centerXAnchor, constant: 0),
            progressText.centerYAnchor.constraint(equalTo: progressTextContainer.centerYAnchor, constant: 0)
            ]); progressText.text = "\((indexPath ?? 1) + 1) / \(sectionCount ?? 12)"
        
        /*********************************************************/
        /* Dismiss Button */
        /*********************************************************/
        view.addSubview(dismissContainer)
        NSLayoutConstraint.activate([
            dismissContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            dismissContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 20)
            ])
        
        /*********************************************************/
        /* Title Constraints */
        /*********************************************************/
        heroView.addSubview(titleView)
        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: heroView.safeAreaLayoutGuide.topAnchor, constant: 66),
            titleView.leadingAnchor.constraint(equalTo: heroView.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleView.widthAnchor.constraint(equalToConstant: 264)
            ])
        
        /*********************************************************/
        /* Sub Title Constraints */
        /*********************************************************/
        heroView.addSubview(subTitleView)
        NSLayoutConstraint.activate([
            subTitleView.leadingAnchor.constraint(equalTo: heroView.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            subTitleView.bottomAnchor.constraint(equalTo: heroView.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            subTitleView.widthAnchor.constraint(equalToConstant: 264)
            ])
        
        /*********************************************************/
        /* Body Text Constraints */
        /*********************************************************/
        scrollView.addSubview(bodyText)
        NSLayoutConstraint.activate([
            bodyText.topAnchor.constraint(equalTo: heroView.safeAreaLayoutGuide.bottomAnchor, constant: 30),
            bodyText.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            bodyText.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            ])
    }
}
