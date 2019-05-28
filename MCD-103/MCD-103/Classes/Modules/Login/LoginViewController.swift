//
//  LoginViewController.swift
//  MCD-101
//
//  Created by yaffi azmi on 27/05/19.
//  Copyright © 2019 yaffi azmi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usernameTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
    }

    func setupTextField() {
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        usernameTextField.placeholderLabel.text = "Username"
        passwordTextField.placeholderLabel.text = "Password"
    }
    
    @IBAction func handleToHome(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            presentTouchUpInside(vc: HomeViewController())
        default:
            presentTouchUpInside(vc: HomeViewController())
        }
    }
    
    func presentTouchUpInside(vc: UIViewController) {
        let vc = vc
        let nav = UINavigationController(rootViewController: vc)
        present(nav, animated: true, completion: nil)
    }
}
