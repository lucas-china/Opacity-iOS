//
//  UIButton.swift
//  Opacity
//
//  Created by Lucas Santana Brito on 22/01/19.
//  Copyright © 2019 Lucas Santana Brito. All rights reserved.
//

import UIKit

extension UIButton {
    
    func createButton() {
        self.layer.cornerRadius = 18
        self.layer.borderWidth = 0.3
        self.layer.borderColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0).cgColor
        self.backgroundColor = UIColor(red: 171, green: 178, blue: 186, alpha: 1.0)
        self.layer.shadowRadius = 0.0
        self.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 9
    }
}
