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
        return button
    }
    
    private func makeLoginButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.sizeToFit()
        return button
    }
}

private extension LandingViewController {
    
    private func addSignButton() {
        let buttonSize = signupButton.frame.size
        
        signupButton.frame = CGRect(
            origin: CGPoint(x: 16, y: 128),
            size: buttonSize
        )
        
        view.addSubview(signupButton)
    }
    
    private func addLoginButton() {
        let buttonSize = loginButton.frame.size
        
        loginButton.frame = CGRect(
            origin: CGPoint(x: 16, y: 128 + 60),
            size: buttonSize
        )
        
        view.addSubview(loginButton)
    }
}
