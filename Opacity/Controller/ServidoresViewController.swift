//
//  ServidoresViewController.swift
//  Opacity
//
//  Created by Lucas Santana Brito on 29/01/19.
//  Copyright © 2019 Lucas Santana Brito. All rights reserved.
//

import UIKit

class ServidoresViewController: UIViewController {
    
    @IBOutlet weak var categoriaLabel: UILabel!
    @IBOutlet weak var fonteLabel: UILabel!
    @IBOutlet weak var ordenarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ordenarButton.createButton()
    }
    
    override func viewDidAppear(_ animated: Bool) {
         categoriaLabel.text = Categoria.categoria.nome.isEmpty ? "Nenhum Servidor Selecionado" : Categoria.categoria.nome
    }

}
