//
//  HomeDelegateBridge.swift
//  Design+PureCode
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import Foundation

extension HomeController {
    func delegateBridge() {
        registerCells()
        collectionDelegates()
        scrollDelegate()
    }
}
