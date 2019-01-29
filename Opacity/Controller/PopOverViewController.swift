//
//  PopUpViewController.swift
//  Opacity
//
//  Created by Lucas Santana Brito on 28/01/19.
//  Copyright © 2019 Lucas Santana Brito. All rights reserved.
//

import UIKit

protocol EscolherCategoriasDelegate {
    func escolherCategoria(nome: String)
}

class PopOverViewController: UIViewController {
    
    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var categorias = ["PROFESSOR DO MAGISTERIO SUPERIOR", "SEM INFORMAÇÃO", "ASSISTENTE EM ADMINISTRACAO", "PROFESSOR MAGISTERIO SUPERIOR-SUBSTITUTO",
                      "TECNICO DE LABORATORIO AREA"]
    var escolherCategoriaDelegate: EscolherCategoriasDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        popupView.layer.cornerRadius = 10
        popupView.layer.masksToBounds = true
    }
    
    @IBAction func fecharPopOver(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
extension PopOverViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categorias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.textColor = .red
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = categorias[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        escolherCategoriaDelegate.escolherCategoria(nome: categorias[indexPath.row])
        dismiss(animated: true, completion: nil)
    }
    
    
}
