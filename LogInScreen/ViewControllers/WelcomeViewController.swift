//
//  LoggedInViewController.swift
//  LogInScreen
//
//  Created by Денис on 10/05/2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!
    
    var welcomeUser = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(welcomeUser)"
    }
    

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }


}
