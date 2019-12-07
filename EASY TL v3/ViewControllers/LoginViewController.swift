//
//  LoginViewController.swift
//  EASY TL v3
//
//  Created by Дарья on 18.11.2019.
//  Copyright © 2019 Easy Traffic Laws. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

         setUpElements()
        // Do any additional setup after loading the view.
    }
    
    func setUpElements(){
        
        //Hide the error label
        errorLabel.alpha = 0
    }
    
    func validateFields() -> String? {
        
        //Check that all fieldes are filled in
        if  emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Пожалуйста заполните все поля"
        }
        
        //Check if the password is secure
        let cleanedMail = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let cleanedPasswored = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isEmailValid(cleanedMail) == false {
            return "Пожалуйста введите корректные данные."
        }
        if Utilities.isPasswordValid(cleanedPasswored) == false {
            return "Пожалуйста введите корректный пароль."
        }
        return nil
    }

    @IBAction func loginTapped(_ sender: Any) {
        //Validate the fields
        let error = validateFields()
        
        if error != nil {
            showError(error!)
        }
        else {
            
            //Create cleaned versions of text fields
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            //Login
                Auth.auth().signIn(withEmail: email, password: password) {
                    (user, error) in
                
                
                if error != nil {
                    self.errorLabel.text = "Пожалуйста введите правильные данные."
                    self.errorLabel.alpha = 1
                }
                else{
                 
                
                    //Transition to the home screen
                    self.transitionToHome()
                    }
            }
        }
    }
        
    func showError(_ message : String){
        errorLabel.text = message
        errorLabel.alpha = 1
    }
        
    func transitionToHome(){
            
        let homeViewController = self.storyboard?.instantiateViewController(identifier : Constants.Storyboard.homeViewController) as? HomeViewController
            
        self.view.window?.rootViewController = homeViewController
        self.view.window?.makeKeyAndVisible()
            
    }
    
}
