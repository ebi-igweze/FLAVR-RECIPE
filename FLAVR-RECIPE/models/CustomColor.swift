//
//  CustomColor.swift
//  FLAVR-RECIPE
//
//  Created by ebi igweze on 18/09/2019.
//  Copyright © 2019 ebi igweze. All rights reserved.
//

import Foundation
import Chameleon

struct CustomColors {
    
    let orange: UIColor!
    
    init(frame: CGRect) {
        
        // get the gradient colors for button
        let leftColor = UIColor(hexString: "FF8C28", withAlpha: 1)!
        let rightColor = UIColor(hexString: "FF6322", withAlpha: 1)!
        
        // create a color gradient using the button frame and color list
        orange = GradientColor(.leftToRight, frame: frame, colors: [leftColor, rightColor])
    }
}
