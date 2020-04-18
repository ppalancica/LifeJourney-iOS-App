//
//  SignupViewController.swift
//  LifeJourney-iOS-App
//
//  Created by Pavel Palancica on 4/18/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import UIKit

private enum Constants {
    static let padding = CGFloat(16)
    static let buttonHeight = CGFloat(44)
    static let buttonContentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
}

class SignupViewController: UIViewController {

    private lazy var firstNameTextField = makeFirstNameTextField()
    private lazy var lastNameTextField = makeLastNameTextField()
    private lazy var signupButton = makeSignupButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        addFirstNameTextField()
        addLastNameTextField()
        addSignupButton()
        
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
    
    private func addSignupButton() {
        view.addSubview(signupButton)
    }
    
    private func configureLayoutConstraints() {
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        signupButton.translatesAutoresizingMaskIntoConstraints = false
                
        NSLayoutConstraint.activate([
            firstNameTextField.heightAnchor.constraint(equalToConstant: Constants.buttonHeight),
            firstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.padding),
            firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.padding),
            firstNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Constants.padding),
            
            lastNameTextField.heightAnchor.constraint(equalToConstant: Constants.buttonHeight),
            lastNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.padding),
            lastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.padding),
            lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: Constants.padding),
            
            signupButton.heightAnchor.constraint(equalToConstant: Constants.buttonHeight),
            signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.padding),
            signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.padding),
            signupButton.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: Constants.padding)
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
    
    private func makeSignupButton() -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Signup", for: .normal)
        button.contentEdgeInsets = Constants.buttonContentEdgeInsets
        button.sizeToFit()
        button.addTarget(self, action: #selector(signupButtonTouched), for: .touchUpInside)
        return button
    }
}

private extension UITextField {
    
    func addPadding(width: CGFloat = 12) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: frame.height))
        leftView = paddingView
        leftViewMode = UITextField.ViewMode.always
    }
}

private extension SignupViewController {
    
    @objc
    private func signupButtonTouched() {

    }
}
