//
//  LabelExtensions.swift
//  FLAVR-RECIPE
//
//  Created by ebi igweze on 20/09/2019.
//  Copyright © 2019 ebi igweze. All rights reserved.
//

import UIKit

extension UILabel {
    
    func withTextSpacing(spacing: Float) -> UILabel {
        // get label's title as attributed string
        let hintLabelAttribute = NSMutableAttributedString(string: self.text!)
        
        // add spacing attribute to the title string
        hintLabelAttribute.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, hintLabelAttribute.length))
        
        // set the spacing attribute to button
        self.attributedText = hintLabelAttribute
        return self
    }
    
    // function does nothing -> returns nothing
    func doneFormatting() {}
}
