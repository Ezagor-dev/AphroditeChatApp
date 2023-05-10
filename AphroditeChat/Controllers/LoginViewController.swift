//
//  LoginViewController.swift
//  AphroditeChat
//
//  Created by Ezagor on 28.04.2023.
//

import UIKit
import Firebase
import SwiftUI

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    
                     let err = e as NSError
                    switch err.code{
                    case AuthErrorCode.wrongPassword.rawValue:
                                print("wrong password")
                            case AuthErrorCode.invalidEmail.rawValue:
                                print("invalid email")
                            case AuthErrorCode.accountExistsWithDifferentCredential.rawValue:
                                print("accountExistsWithDifferentCredential")
                        default:
                        print("unknown error: \(err.localizedDescription)")
                        }
                    }
                    
                    
                else{
                    //Navigate to the ChatViewController
                    self.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                }
        }
        
        }
        
    }
    
}
