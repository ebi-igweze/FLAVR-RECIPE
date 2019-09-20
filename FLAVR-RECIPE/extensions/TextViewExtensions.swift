//
//  InputViewExtensions.swift
//  FLAVR-RECIPE
//
//  Created by ebi igweze on 20/09/2019.
//  Copyright © 2019 ebi igweze. All rights reserved.
//

import UIKit

extension UITextField {

    func withPlaceHolderColor(color: UIColor) -> UITextField {
        
        self.attributedPlaceholder  = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: color])

        return self
        
    }
    
    func withPadding(right: CGFloat = 0, left: CGFloat = 0) -> UITextField {
        // left padding
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: self.frame.size.height))
        self.leftView = leftPaddingView
        self.leftViewMode = .always
        
        // right padding
        let rightPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: right, height: self.frame.size.height))
        self.rightView = rightPaddingView
        self.rightViewMode = .always
    
        return self
    }
    
    
        func setLeftPaddingPoints(_ amount:CGFloat){
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
            self.leftView = paddingView
            self.leftViewMode = .always
        }
        func setRightPaddingPoints(_ amount:CGFloat) {
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
            self.rightView = paddingView
            self.rightViewMode = .always
        }
    
    
    func doneFormatting() {}
}

