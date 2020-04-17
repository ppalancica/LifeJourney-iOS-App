//
//  MainViewController.swift
//  LifeJourney-iOS-App
//
//  Created by Pavel Palancica on 4/14/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    private lazy var landingViewController = LandingViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(landingViewController.view)
        addChild(landingViewController)
        landingViewController.didMove(toParent: self)
    }
}
