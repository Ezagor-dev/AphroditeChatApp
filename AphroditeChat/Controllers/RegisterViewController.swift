//
//  RegisterViewController.swift
//  AphroditeChat
//
//  Created by Ezagor on 28.04.2023.
// Upgraded by Ezagor on 06.05.2023.

import UIKit
import Firebase

class RegisterViewController: UIViewController {


    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                }else{
                    //Navigate to the ChatViewController
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
        }
        
          
        }
    }
    
}
