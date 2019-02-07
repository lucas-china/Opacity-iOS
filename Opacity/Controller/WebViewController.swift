//
//  WebViewController.swift
//  Opacity
//
//  Created by Lucas Santana Brito on 06/02/19.
//  Copyright © 2019 Lucas Santana Brito. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var url: String = "https://learnappmaking.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = URLRequest(url: URL(string: url)!)
        webView.load(request)
    }
    
    @IBAction func fecharView(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    

}
