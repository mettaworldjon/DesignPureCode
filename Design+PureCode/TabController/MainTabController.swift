//
//  MainTabController.swift
//  Design+PureCode
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let selected = UIImage(named: "TabBar-Home-Active") else { return }
        guard let unselected = UIImage(named: "TabBar-Home") else { return }
        
        let home = createNavController(vc: HomeController(), selected: selected, unselected: unselected)
        
        viewControllers = [home]
    }

    func createNavController(vc:UIViewController, selected:UIImage, unselected:UIImage) -> UINavigationController {
        let navController = NavController(rootViewController: vc)
        navController.tabBarItem.image = unselected
        navController.tabBarItem.selectedImage = selected
        return navController
    }

}

