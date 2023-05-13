//
//  ViewController.swift
//  LogInScreen
//
//  Created by Денис on 09/05/2023.
//

import UIKit

final class LogInViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let loginName = "Deniss"
    private let password = "123qwerty"
    
    //MARK: - Override func
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUser = loginName
    }
    
    
    //MARK: - IBAction
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == loginName, passwordTF.text == password else {
            showAlert(withTitle: "Oops wrong login or password", andMessage: "Please try again", textField: passwordTF)
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
  
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops", andMessage: "Your name is \(loginName)")
        : showAlert(withTitle: "Oops", andMessage: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

//MARK: - Extension
extension LogInViewController {
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

