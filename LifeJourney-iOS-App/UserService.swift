//
//  UserService.swift
//  LifeJourney-iOS-App
//
//  Created by Pavel Palancica on 4/18/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import UIKit

class UserService {
    
    static let shared = UserService()
    
    private init() { }
    
    public func signupWith(signupDataModel: SignupDataModel,
                           onSuccess: @escaping () -> Void,
                           onFailure: @escaping () -> Void) {
        // Start the Async Operation...
        
        let completed = true
        let error = false
        
        DispatchQueue.main.async {
            if completed && !error {
                onSuccess()
            } else {
                onFailure()
            }
        }
    }
}
