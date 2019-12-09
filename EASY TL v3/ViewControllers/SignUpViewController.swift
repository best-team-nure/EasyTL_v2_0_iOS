//
//  SignUpViewController.swift
//  EASY TL v3
//
//  Created by Дарья on 18.11.2019.
//  Copyright © 2019 Easy Traffic Laws. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseDatabase

class SignUpViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
}
    
    func setUpElements(){
        
        //Hide the error label
        errorLabel.alpha = 0
    }
    
    //Check the fields and validate that the data is correct. If everything is correct this method returns nil. Otherwise it returns error message.
    
    func validateFields() -> String? {
        
        //Check that all fieldes are filled in
        if userNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Пожалуйста заполните все поля"
        }
        
        //Check if the password is secure
        let cleanedMail = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isEmailValid(cleanedMail) == false {
            return "Пожалуйста введите корректный email"
        }
        if Utilities.isPasswordValid(cleanedPassword) == false {
            return "Пожалуйста введите корректный пароль"
        }
        return nil
    }

    @IBAction func signUpTapped(_ sender: Any) {
        
        //var ref:DatabaseReference?
        
        //Validate the fields
        let error = validateFields()
        
        if error != nil {
            showError(error!)
        }
        else {
           
        //Create clean version of data
            let userName = userNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
        //Create the user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                
                //Check for the errors
                if err != nil {
                    self.showError("Такой пользователь уже есть")
                }
                else {
                    
                    //Communication with the database
                    var ref: DatabaseReference?
                    ref = Database.database().reference()
                    
                    let userID = Auth.auth().currentUser?.uid
                    
                    let newUser = [ "Name" : userName,
                                    "stars" : [
                                        "0" : "1",
                                        "1" : "0",
                                        "2" : "0",
                                        "3" : "0",
                                        "4" : "0",
                                        "5" : "0"],
                                    "averages" : [
                                        "correctAnswers" : "0",
                                        "time" : "0"],
                                    "passedTopics" : "0",
                                    "questions" : [
                                        "correct" : "0",
                                        "total" : "0"],
                                    "tests" : [
                                        "passed" : "0",
                                        "total" : "0"]] as [String:Any]
                    
                    //Change autoId on uid
                    ref?.child(userID!).setValue(newUser)
                    
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
        
        let homeViewController = storyboard?.instantiateViewController(identifier : Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        
    }
}
