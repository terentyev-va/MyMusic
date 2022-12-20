//
//  Nib.swift
//  MyMusic
//
//  Created by Вячеслав Терентьев on 20.12.2022.
//

import UIKit

extension UIView {
    
    class func loadFromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}
