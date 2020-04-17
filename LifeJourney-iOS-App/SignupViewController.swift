//
//  SignupViewController.swift
//  LifeJourney-iOS-App
//
//  Created by Pavel Palancica on 4/18/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    private lazy var firstNameTextField = makeFirstNameTextField()
    private lazy var lastNameTextField = makeLastNameTextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        addFirstNameTextField()
        addLastNameTextField()
        
        configureLayoutConstraints()
    }
}

private extension SignupViewController {
    
    private func addFirstNameTextField() {
        view.addSubview(firstNameTextField)
    }
    
    private func addLastNameTextField() {
        view.addSubview(lastNameTextField)
    }
    
    private func configureLayoutConstraints() {
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            firstNameTextField.heightAnchor.constraint(equalToConstant: 44),
            firstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            firstNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
        ])
        
        NSLayoutConstraint.activate([
            lastNameTextField.heightAnchor.constraint(equalToConstant: 44),
            lastNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            lastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 16),
        ])
    }
}

private extension SignupViewController {
    
    private func makeFirstNameTextField() -> UITextField {
        let textField = UITextField()
        
        textField.layer.cornerRadius = 4
        textField.layer.borderWidth = 1
        textField.addPadding()
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = .white
        textField.placeholder = "First Name here..."
        
        return textField
    }
    
    private func makeLastNameTextField() -> UITextField {
        let textField = UITextField()
        
        textField.layer.cornerRadius = 4
        textField.layer.borderWidth = 1
        textField.addPadding()
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.backgroundColor = .white
        textField.placeholder = "Last Name here..."
        
        return textField
    }
}

private extension UITextField {
    
    func addPadding(width: CGFloat = 12) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: frame.height))
        leftView = paddingView
        leftViewMode = UITextField.ViewMode.always
    }
}
