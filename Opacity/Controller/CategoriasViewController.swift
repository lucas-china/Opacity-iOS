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
    @IBOutlet weak var categoriaTextField: UITextField!
    
    var dataPicker = ["PROFESSOR DO MAGISTERIO SUPERIOR", "SEM INFORMAÇÃO"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        okButton.createButton()
        categoriaTextField.setIcone(image: #imageLiteral(resourceName: "seta_baixo"))
        categoriaTextField.delegate = self
        criarPickerView()
    }
}

extension CategoriasViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func criarPickerView() {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        criarToolbar()
        categoriaTextField.inputView = pickerView
    }
    
    func criarToolbar() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(CategoriasViewController.dismissKeyboard))
        toolbar.setItems([doneButton], animated: false)
        
        categoriaTextField.inputAccessoryView = toolbar
    }
    
    @objc func donePicker() {
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataPicker.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataPicker[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        categoriaTextField.text = dataPicker[row]
        /// trocar esse funcao para quando clicar em done.
    }

}

