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
    
    @IBOutlet var forgotUserNamePassword: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    @IBOutlet var logInButton: UIButton!
    
    //MARK: - Override func
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        
        if let touch = touches.first, !userNameTF.frame.contains(touch.location(in: view)) {
            view.endEditing(true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUser = "Welcome, \(userNameTF.text ?? "")!"
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == "Deniss", passwordTF.text == "123qwerty" else {
            return false
        }
        return true
    }
    
//MARK: - IBAction
    @IBAction func logInButtonTapped() {
        if userNameTF.text != "Deniss" || passwordTF.text != "123qwerty" {
            showAlert(withTitle: "Oops", andMessage: "Wrong User Name or Password was entered")
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
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

//MARK: - Extension
extension LogInViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

