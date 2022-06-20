//
//  UILabel + Extensions.swift
//  MyMusic
//
//  Created by Вячеслав Терентьев on 20.06.2022.
//

import UIKit

extension UILabel {
    
    convenience init(text: String = "") {
        self.init()
        self.text = text
        self.font = UIFont.systemFont(ofSize: 14)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
