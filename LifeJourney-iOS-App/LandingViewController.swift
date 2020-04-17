//
//  LandingViewController.swift
//  LifeJourney-iOS-App
//
//  Created by Pavel Palancica on 4/18/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {
    
    private lazy var signupButton = makeSignupButton()
    private lazy var loginButton = makeLoginButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        addSignButton()
        addLoginButton()
        
        configureLayoutConstraints()
    }
}

private extension LandingViewController {
    
    private func makeSignupButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Signup", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.sizeToFit()
        button.addTarget(self, action: #selector(signupButtonTouched), for: .touchUpInside)
        return button
    }
    
    private func makeLoginButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.sizeToFit()
        button.addTarget(self, action: #selector(loginButtonTouched), for: .touchUpInside)
        return button
    }
}

private extension LandingViewController {
    
    private func addSignButton() {
        view.addSubview(signupButton)
    }
    
    private func addLoginButton() {
        view.addSubview(loginButton)
    }
    
    private func configureLayoutConstraints() {
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signupButton.heightAnchor.constraint(equalToConstant: 44),
            signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            signupButton.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -16),
            
            loginButton.heightAnchor.constraint(equalToConstant: 44),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])
    }
}

private extension LandingViewController {
    
    @objc
    private func signupButtonTouched() {
        
    }
    
    @objc
    private func loginButtonTouched() {
        
    }
}
