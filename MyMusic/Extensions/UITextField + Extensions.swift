//
//  UITextField + Extensions.swift
//  MyMusic
//
//  Created by Вячеслав Терентьев on 20.06.2022.
//

import UIKit

extension UITextField {
    
    convenience init(placeHolder: String = "") {
        self.init()
        self.placeholder = placeholder
        self.borderStyle = .roundedRect
        self.clearButtonMode = .always
    }
}
