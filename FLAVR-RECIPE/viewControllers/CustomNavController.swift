//
//  CustomNavController.swift
//  FLAVR-RECIPE
//
//  Created by ebi igweze on 20/09/2019.
//  Copyright © 2019 ebi igweze. All rights reserved.
//

import UIKit

class CustomNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // make bar transparent
        setBarAsInvisible()
    }
    
    
    private func setBarAsInvisible() {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
    }

}
