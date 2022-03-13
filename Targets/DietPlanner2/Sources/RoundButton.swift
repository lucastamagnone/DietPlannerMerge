//
//  RoundButton.swift
//  Calc
//
//  Created by Lucas on 17/08/21.
//

import UIKit

@IBDesignable

class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
         self.layer.borderWidth = 5
         self.layer.borderColor = .init(red: 1/255, green: 239/255, blue: 234/255, alpha: 1)
        }
    }

}
