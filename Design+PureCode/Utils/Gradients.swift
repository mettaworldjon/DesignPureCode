//
//  Gradients.swift
//  Design+PureCode
//
//  Created by Jonathan Dowdell on 10/23/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//


import UIKit

class gradientColor:UIView {
    
    var firstColor:UIColor?
    var secondColor:UIColor?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = [
                UIColor.init(red: 255/255, green: 200/255, blue: 32/255, alpha: 1).cgColor,
                UIColor.init(red: 255/255, green: 0, blue: 0, alpha: 1).cgColor
            ]
            layer.locations = [0.0, 0.5]
            layer.endPoint = CGPoint(x: -0.8, y: 0.3)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(firstColor:UIColor, secondColor:UIColor) {
        self.init(frame: .zero)
        self.firstColor = firstColor
        self.secondColor = secondColor
        
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = [
                secondColor.cgColor,
                firstColor.cgColor
            ]
            layer.locations = [0.0, 0.3]
            layer.endPoint = CGPoint(x: -0.8, y: 0.6)
        }
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
}
