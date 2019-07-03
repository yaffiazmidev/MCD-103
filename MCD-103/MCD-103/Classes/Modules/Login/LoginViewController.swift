//
//  LoginViewController.swift
//  MCD-101
//
//  Created by yaffi azmi on 27/05/19.
//  Copyright © 2019 yaffi azmi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var shrineIcon: UIImageView!
    @IBOutlet weak var usernameTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        shrineIcon.image = shrineIcon.image?.withRenderingMode(.alwaysTemplate)
        shrineIcon.tintColor = #colorLiteral(red: 0.2666666667, green: 0.1725490196, blue: 0.1803921569, alpha: 1)
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
