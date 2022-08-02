//
//  LoginViewController.swift
//  Task 3.4
//
//  Created by Raline Maria da Silva on 02/08/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func loginPressionadoButton(_ sender: UIButton) {
        loginPressionado()
    }
    
    @IBAction func esqueceuSenhaButton(_ sender: UIButton) {
        esqueceuSenhaPressionado()
    }
    func loginPressionado() {
        let alert = UIAlertController(title: "Logando", message: "Fazendo login na sua conta...", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func esqueceuSenhaPressionado() {
        let alert = UIAlertController(title: "Redefinir senha", message: "Enviamos um email para \(emailTextField.text!). \nSiga as instruções para criar uma nova senha segura.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}
