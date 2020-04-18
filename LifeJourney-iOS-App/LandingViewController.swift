//
//  LandingViewController.swift
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

class LandingViewController: UIViewController {
    
    private lazy var signupButton = makeSignupButton()
    private lazy var loginButton = makeLoginButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        addSignupButton()
        addLoginButton()
        
        configureLayoutConstraints()
    }
}

private extension LandingViewController {
    
    private func makeSignupButton() -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Signup", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.sizeToFit()
        button.addTarget(self, action: #selector(signupButtonTouched), for: .touchUpInside)
        return button
    }
    
    private func makeLoginButton() -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Login", for: .normal)
        button.contentEdgeInsets = Constants.buttonContentEdgeInsets
        button.sizeToFit()
        button.addTarget(self, action: #selector(loginButtonTouched), for: .touchUpInside)
        return button
    }
}

private extension LandingViewController {
    
    private func addSignupButton() {
        view.addSubview(signupButton)
    }
    
    private func addLoginButton() {
        view.addSubview(loginButton)
    }
    
    private func configureLayoutConstraints() {
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signupButton.heightAnchor.constraint(equalToConstant: Constants.buttonHeight),
            signupButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -Constants.padding),
            signupButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Constants.padding),
            signupButton.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -Constants.padding),
            
            loginButton.heightAnchor.constraint(equalToConstant: Constants.buttonHeight),
            loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Constants.padding),
            loginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -Constants.padding),
            loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -Constants.padding)
        ])
    }
}

private extension LandingViewController {
    
    @objc
    private func signupButtonTouched() {
        let signupViewController = SignupViewController()
        signupViewController.delegate = self
        navigationController?.pushViewController(signupViewController, animated: true)
    }
    
    @objc
    private func loginButtonTouched() {
        
    }
}

extension LandingViewController: SignupViewControllerDelegate {
    
    func shouldSignupWith(signupDataModel: SignupDataModel) {
        // Make a request
        UserService.shared.signupWith(
            signupDataModel: signupDataModel,
            onSuccess: {
                //
            },
            onFailure: {
                //
            }
        )
    }
}
