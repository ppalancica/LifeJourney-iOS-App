//
//  CustomTextField.swift
//  LifeJourney-iOS-App
//
//  Created by Pavel Palancica on 4/19/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import UIKit

private struct Constants {
    static let defaultPadding: UIEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 8)
    static let cornerRadius = CGFloat(4)
    static let borderWidth = CGFloat(1)
}

class CustomTextField: UITextField {
    
    let padding: UIEdgeInsets
    
    init(padding: UIEdgeInsets = Constants.defaultPadding) {
        self.padding = padding
        super.init(frame: .zero)
        layer.cornerRadius = Constants.cornerRadius
        layer.borderWidth = Constants.borderWidth
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
