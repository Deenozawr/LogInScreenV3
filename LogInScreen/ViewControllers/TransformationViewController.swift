//
//  TransformationViewController.swift
//  LogInScreen
//
//  Created by Денис on 14/05/2023.
//

import UIKit

class TransformationViewController: UIViewController {

    @IBOutlet var beforeTransformationImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beforeTransformationImage.layer.cornerRadius = 50
    }
    

    

}
