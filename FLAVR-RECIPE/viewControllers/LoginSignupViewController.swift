
import UIKit

class LoginSignupViewController: UIViewController {

    
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpHintLabel: UILabel!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var logoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup view buttons
        setupButtons()
        
        // setup text labels
        setupTextLabels()
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



extension LoginSignupViewController {
    
    fileprivate func setupButtons() {
        let customColors = CustomColors(frame: view.frame)
        let spacing: Float = 2.0
    
        // ----- setup login button --------------
        loginButton.asPrimaryButton(color: customColors.orange.cgColor)
    
    
        // ----- setup signUp button --------------
        signupButton
        // set the border color
        .withColoredBorder(cgColor: customColors.orange.cgColor)
        // set the border width
        .withBorderWidth(borderWidth: 2)
        // set buttons corner radius
        .withCornerRadius()
        // add text spacing to button title
        .withTextSpacing(spacing: spacing)
        .doneFormatting()
    
    }
    
    fileprivate func setupTextLabels() {
        // setup logo label
        logoLabel
            .withTextSpacing(spacing: 1.75)
            .doneFormatting()
        
        // sign up hint label
        signUpHintLabel
            .withTextSpacing(spacing: 1.5)
            .doneFormatting()
    }
}
