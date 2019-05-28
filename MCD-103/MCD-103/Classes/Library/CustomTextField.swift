//
//  CustomTextField.swift
//  MCD-101
//
//  Created by yaffi azmi on 28/05/19.
//  Copyright © 2019 yaffi azmi. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    
    let placeholderLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 16, y: 16, width: 200, height: 21)
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .gray
        return label
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clearButtonMode = .whileEditing
        self.border()
        self.addSubview(placeholderLabel)
        
        self.addTarget(self, action: #selector(editingDidBegin), for: .editingDidBegin);
        self.addTarget(self, action: #selector(editingDidEnd), for: .editingDidEnd);
        
    }
    
    func border() {
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 1.2
        self.layer.cornerRadius = 5
    }
    
    @objc func editingDidBegin(textField: UITextField) {
        self.layer.borderColor = UIColor.blue.cgColor
        switch textField.text {
        case "":
            self.placeholderTransform(duration: 0.3, x: 0, y: -11, width: 200, height: 21, scaleX: 0.8, scaleY: 0.8)
        default:
            break
        }
    }
    
    @objc func editingDidEnd(textField: UITextField) {
        switch textField.text {
        case "":
            self.layer.borderColor = UIColor.gray.cgColor
            self.placeholderTransform(duration: 0.3, x: 45, y: 16, width: 200, height: 21, scaleX: 1.0, scaleY: 1.0)
        default:
            self.layer.borderColor = UIColor.blue.cgColor
        }
    }
    
    func placeholderTransform(duration: CGFloat, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, scaleX: CGFloat, scaleY: CGFloat) {
        UIView.animate(withDuration: 0.3) {
            self.placeholderLabel.frame = CGRect(x: x, y: y, width: width, height: height)
            self.placeholderLabel.transform = CGAffineTransform(scaleX: scaleX, y: scaleY)
            self.layoutIfNeeded()
        }
    }
}
