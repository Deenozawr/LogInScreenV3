//
//  ViewController.swift
//  LogInScreen
//
//  Created by Денис on 09/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var forgotUserNamePassword: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    @IBOutlet var logInButton: UIButton!
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == "Deniss", passwordTF.text == "123qwerty" else {
            return false
        }
        return true
    }
    
    @IBAction func logInButtonTapped() {
        if userNameTF.text != "Deniss" || passwordTF.text != "123qwerty" {
            showAlert(withTitle: "Stop", andMessage: "Wrong User Name or Password was entered")
        }
    }
    
    @IBAction func forgotUserName() {
        if forgotUserNamePassword.isEnabled {
            showAlert(withTitle: "Oops", andMessage: "Username is Deniss")
        }
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        if forgotPasswordButton.isEnabled {
            showAlert(withTitle: "Oops", andMessage: "Password is 123qwerty")
        }
    }
    
}


extension ViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

