//
//  UIViewExtensions.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 22/11/22.
//

import Foundation
import UIKit

extension UIView {
    func round( _ radius: CGFloat = 10) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat){
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
