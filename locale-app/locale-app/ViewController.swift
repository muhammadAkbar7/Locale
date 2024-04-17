//
//  ViewController.swift
//  locale-app
//
//  Created by Muhammad Akbar on 4/16/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var pass: UITextField!
    
    var User: user!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        username.delegate = self
        pass.delegate = self
        
        // If initializing a user object is needed, do it appropriately
        // Example initialization might be commented out if not used directly
        // user = User(username: "initialName", userPass: "initialPass")
        
        // Optional: Customize the keyboard return key
        username.returnKeyType = .next  
        print(username.text!)
        // Suggests "Next" on the keyboard
        pass.returnKeyType = .done     // Suggests "Done" on the keyboard
        print(pass!)
        // Secure text entry for password field
        pass.isSecureTextEntry = true
    }

    // MARK: - UITextFieldDelegate
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        // Dismiss the keyboard
//        textField.resignFirstResponder()
//        
//        // Optional: Move to next text field. Uncomment to enable
//         if textField == username {
//             pass.becomeFirstResponder()
//         }
//        
//        return true
//    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == username {
            // Moves focus to the password field when pressing "Next" on username field
            pass.becomeFirstResponder()
        } else if textField == pass {
            // Dismisses the keyboard when pressing "Done" on password field
            textField.resignFirstResponder()
        }
        return true
    }
}

