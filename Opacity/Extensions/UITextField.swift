//
//  UITextField.swift
//  Opacity
//
//  Created by Lucas Santana Brito on 22/01/19.
//  Copyright © 2019 Lucas Santana Brito. All rights reserved.
//

import UIKit

extension UITextField {
    
    func setIcone(image: UIImage) {
        let iconeView = UIImageView(frame: CGRect(x: -10, y: 5, width: 20, height: 20))
        iconeView.image = image
        
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconeView)
        
        rightView = iconContainerView
        rightViewMode = .always
    }
}
