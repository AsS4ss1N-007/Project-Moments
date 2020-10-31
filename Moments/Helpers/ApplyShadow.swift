//
//  ApplyShadow.swift
//  Moments
//
//  Created by Sachin's Macbook Pro on 31/10/20.
//

import UIKit
extension UIView{
    func applyShadow(){
        self.layer.shadowColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = self.layer.cornerRadius
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
        
    }
}
