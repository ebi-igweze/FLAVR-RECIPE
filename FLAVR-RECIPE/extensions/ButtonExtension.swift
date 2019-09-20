//
//  ButtonExtension.swift
//  FLAVR-RECIPE
//
//  Created by ebi igweze on 20/09/2019.
//  Copyright © 2019 ebi igweze. All rights reserved.
//

import UIKit

extension UIButton {
    
    func withBorderWidth(borderWidth: CGFloat) -> UIButton {
        self.layer.borderWidth = borderWidth
        return self
    }
    
    func withCornerRadius(cornerRadius: CGFloat? = nil) -> UIButton {
        // get 50% of the height as the corner radius
        let cornerRadius = cornerRadius ?? self.layer.frame.height / 2
        self.layer.cornerRadius = cornerRadius
        return self
    }
    
    func withBackgroundColor(cgColor: CGColor) -> UIButton {
        self.layer.backgroundColor = cgColor
        return self
    }
    
    func withColoredBorder(cgColor: CGColor) -> UIButton {
        self.layer.borderColor = cgColor
        return self
    }
    
    func withTextSpacing(spacing: Float) -> UIButton {
        // get button's title as attributed string
        let textAttribute = NSMutableAttributedString(string: (self.titleLabel?.text)!)
        // add spacing attribute to the title string
        textAttribute.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, textAttribute.length))
        // set the spacing attribute to button
        self.setAttributedTitle(textAttribute, for: .normal)
        return self
    }
    
    func asPrimaryButton(color: CGColor) {
        let spacing: Float = 2.0
        
        // ----- setup primary button --------------
        self
            // set button background color
            .withBackgroundColor(cgColor: color)
            // set buttons corner radius
            .withCornerRadius()
            // add text spacing to button title
            .withTextSpacing(spacing: spacing)
            .doneFormatting()
        
    }

    // function does nothing -> returns nothing
    func doneFormatting() {}
}
