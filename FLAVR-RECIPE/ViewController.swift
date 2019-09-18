//
//  ViewController.swift
//  FLAVR-RECIPE
//
//  Created by ebi igweze on 18/09/2019.
//  Copyright © 2019 ebi igweze. All rights reserved.
//

import UIKit
import Chameleon


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // get the gradient colors for button
        let leftColor = UIColor(hexString: "FF8C28", withAlpha: 1)!
        let rightColor = UIColor(hexString: "FF6322", withAlpha: 1)!
        
        // create a color gradient using the button frame and color list
        self.view.backgroundColor = GradientColor(.leftToRight, frame: view.frame, colors: [leftColor, rightColor])

    }


}

