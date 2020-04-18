//
//  SignupDataModel.swift
//  LifeJourney-iOS-App
//
//  Created by Pavel Palancica on 4/18/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import UIKit

class SignupDataModel {
    public private(set) var firstName: String
    public private(set) var lastName: String
    public private(set) var password: String
    
    public init() {
        firstName = ""
        lastName = ""
        password = ""
    }
    
    public func updateFirstName(with string: String) {
        firstName = string
    }
    
    public func updateLastName(with string: String) {
        lastName = string
    }
    
    public func updatePassword(with string: String) {
        password = string
    }
    
    public func hasEmptyFields() -> Bool {
        return firstName.isEmpty || lastName.isEmpty || password.isEmpty
    }
}
