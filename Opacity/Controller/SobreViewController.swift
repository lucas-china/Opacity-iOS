//
//  SobreViewController.swift
//  Opacity
//
//  Created by Lucas Santana Brito on 06/02/19.
//  Copyright © 2019 Lucas Santana Brito. All rights reserved.
//

import UIKit

class SobreViewController: UIViewController {

    @IBOutlet weak var logoAkaImageView: UIImageView!
    
    @IBOutlet weak var apiLabel: UILabel!
    @IBOutlet weak var frontEndLabel: UILabel!
    @IBOutlet weak var akatisukiJSLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoAkaImageView.layer.cornerRadius = logoAkaImageView.layer.frame.size.width/2
        logoAkaImageView.clipsToBounds = true
        fazerLabelClicavel()
    }
    
    func fazerLabelClicavel() {
        apiLabel.isUserInteractionEnabled = true
        frontEndLabel.isUserInteractionEnabled = true
        akatisukiJSLabel.isUserInteractionEnabled = true
        
        apiLabel.tag = 1
        frontEndLabel.tag = 2
        akatisukiJSLabel.tag = 3
        
        apiLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapFunction)))
        frontEndLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapFunction)))
        akatisukiJSLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapFunction)))
        
    }
    
    @objc func tapFunction(sender: UITapGestureRecognizer) {
        let webViewVC = storyboard?.instantiateViewController(withIdentifier: "webViewVC") as! WebViewController
        switch sender.view!.tag {
        case 1:
            print("tap api")
            webViewVC.url = "https://github.com/AkatsukiJS/api-opacity-project"
        case 2:
            webViewVC.url = "https://github.com/AkatsukiJS/opacity-project-front-end"
        case 3:
            webViewVC.url = "https://akatsuki.js.org"
        default:
            break
        }
        present(webViewVC, animated: true, completion: nil)
    }

}
