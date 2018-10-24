//
//  HomeController.swift
//  Design+PureCode
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    let ui = HomeViews()
    let presentSectionViewController = PresentSectionViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ui
        self.title = "Home"
        self.navigationController?.navigationBar.isHidden = true
        delegateBridge()
    }
    
}
