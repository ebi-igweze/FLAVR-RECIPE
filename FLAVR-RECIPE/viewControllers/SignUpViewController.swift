//
//  SignUpViewController.swift
//  FLAVR-RECIPE
//
//  Created by ebi igweze on 20/09/2019.
//  Copyright © 2019 ebi igweze. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // setup labels
        setupLabels()
        
        // setup signup form
        setupForm()
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // hide status bar
        if let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as? UIView {
            statusBar.isHidden = true
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        // show status bar
        if let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as? UIView {
            statusBar.isHidden = false
        }
    }

}


extension SignUpViewController {
    
    fileprivate func setupLabels() {
        
        titleLabel
            .withTextSpacing(spacing: 2.0)
            .doneFormatting()
        
        subtitleLabel
            .withTextSpacing(spacing: 1.45)
            .doneFormatting()
    }
    
    
    fileprivate func setupForm() {
        let customColors = CustomColors(frame: view.frame)
        signupButton.asPrimaryButton(color: customColors.orange.cgColor)
        
        
        let borderColor =  UIColor(hexString: "E0E0E0")?.cgColor
        nameInput.layer.borderColor = borderColor
        emailInput.layer.borderColor = borderColor
        passwordInput.layer.borderColor = borderColor
        
        
        
        // set the color of the place holder
        let placeHolderColor = UIColor(hexString: "9E9E9E")!
        
        nameInput
            .withPlaceHolderColor(color: placeHolderColor)
            .withPadding(right: 5, left: 5)
            .doneFormatting()
        
        emailInput
            .withPlaceHolderColor(color: placeHolderColor)
            .withPadding(right: 5, left: 5)
            .doneFormatting()
        
        passwordInput
            .withPlaceHolderColor(color: placeHolderColor)
            .withPadding(right: 5, left: 5)
            .doneFormatting()
    }
}
