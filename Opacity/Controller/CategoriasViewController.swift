//
//  ViewController.swift
//  Opacity
//
//  Created by Lucas Santana Brito on 22/01/19.
//  Copyright © 2019 Lucas Santana Brito. All rights reserved.
//

import UIKit

class CategoriasViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var selecionarCategoriasButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        okButton.createButton()
        selecionarCategoriasButton.layer.cornerRadius = 5
        selecionarCategoriasButton.layer.borderWidth = 0.5
        selecionarCategoriasButton.layer.borderColor = UIColor.lightGray.cgColor
        
    }
    
    @IBAction func mostrarCategorias(_ sender: UIButton) {
        let popOverCategoriasVC = storyboard?.instantiateViewController(withIdentifier: "popOverCategrias") as! PopOverViewController
        popOverCategoriasVC.escolherCategoriaDelegate = self
        present(popOverCategoriasVC, animated: true, completion: nil)
    }
    
    @IBAction func mostrarServidores(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
}

extension CategoriasViewController: EscolherCategoriasDelegate {
    func escolherCategoria(nome: String) {
        Categoria.categoria.nome = nome
        selecionarCategoriasButton.setTitle(nome, for: .normal)
    }
    
}
