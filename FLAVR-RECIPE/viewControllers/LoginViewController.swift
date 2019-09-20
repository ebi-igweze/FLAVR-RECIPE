//
//  LoginViewController.swift
//  FLAVR-RECIPE
//
//  Created by ebi igweze on 20/09/2019.
//  Copyright © 2019 ebi igweze. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var loginTitle: UILabel!
    @IBOutlet weak var loginSubtitle: UILabel!
    @IBOutlet weak var forgotPasswordLabel: UILabel!
    
    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup text labels
        setupLabels()
        
        // set up form controls
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


extension LoginViewController {
    
    fileprivate func setupLabels() {
        
        loginTitle
            .withTextSpacing(spacing: 2.0)
            .doneFormatting()
        
        
        loginSubtitle
            .withTextSpacing(spacing: 1.45)
            .doneFormatting()
        
        
        forgotPasswordLabel
            .withTextSpacing(spacing: 1.45)
            .doneFormatting()
        
    }
    
    fileprivate func setupForm() {
        let customColors = CustomColors(frame: view.frame)
        loginButton.asPrimaryButton(color: customColors.orange.cgColor)
        
        let borderColor =  UIColor(hexString: "E0E0E0")?.cgColor
        emailInput.layer.borderColor = borderColor
        passwordInput.layer.borderColor = borderColor
        
        // set the color of the place holder
        let placeHolderColor = UIColor(hexString: "9E9E9E")!
        
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
