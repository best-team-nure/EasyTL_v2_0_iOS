//
//  HomeViewController.swift
//  EASY TL v3
//
//  Created by Дарья on 18.11.2019.
//  Copyright © 2019 Easy Traffic Laws. All rights reserved.
//

import UIKit
import Firebase
import Foundation

class HomeViewController: UIViewController {

    @IBOutlet weak var userNameL: UILabel!
    @IBOutlet weak var correctQuestions: UILabel!
    @IBOutlet weak var totalQuestions: UILabel!
    @IBOutlet weak var passedTests: UILabel!
    @IBOutlet weak var totalTests: UILabel!
    @IBOutlet weak var aCorrect: UILabel!
    @IBOutlet weak var aTime: UILabel!
    @IBOutlet weak var out: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.userNameL.alpha = 0
        self.correctQuestions.alpha = 0
        self.totalQuestions.alpha = 0
        self.passedTests.alpha = 0
        self.totalTests.alpha = 0
        self.aCorrect.alpha = 0
        self.aTime.alpha = 0

            let ref = Database.database().reference()
            let userID = Auth.auth().currentUser?.uid

        ref.child(userID!).observe(.value, with: { (snapshot) in
            let dict = snapshot.value as? NSDictionary
            let username = dict!["Name"] as? String
            let averages = dict!["averages"] as? [String:Any]
            let averageCorrectAnswers = averages!["correctAnswers"] as? Int
            let averageTime = averages!["time"] as? Int
            let passedTopics = dict!["passedTopics"] as? Int
            let questions = dict!["questions"] as? [String:Any]
            let correctQuestions = questions!["correct"] as? Int
            let totalQuestions = questions!["total"] as? Int
            let tests = dict!["tests"] as? [String:Any]
            let passedTests = tests!["passed"] as? Int
            let totalTests = tests!["total"] as? Int

            let user = User(id:userID!, name:username!, topicProgress:passedTopics!, totalQuestions:totalQuestions!, correctQuestions:correctQuestions!, totalTests:totalTests!, passedTests:passedTests!, averageCorrectAnswers:averageCorrectAnswers!, averageTime:averageTime!)

            self.userNameL.text = username
            self.userNameL.alpha = 1
            self.correctQuestions.text = String(user.correctQuestions)
            self.correctQuestions.alpha = 1
            self.totalQuestions.text = String(user.totalQuestions)
            self.totalQuestions.alpha = 1
            self.passedTests.text = String(user.passedTests)
            self.passedTests.alpha = 1
            self.totalTests.text = String(user.totalTests)
            self.totalTests.alpha = 1
            self.aCorrect.text = String(user.averageCorrectAnswers)
            self.aCorrect.alpha = 1
            self.aTime.text = String(user.averageTime)
            self.aTime.alpha = 1
        })
    }

    @IBAction func handleLogout(_ target: UIButton) {
        try! Auth.auth().signOut()
        let signInViewController = self.storyboard?.instantiateViewController(identifier : Constants.StoryboardOut.signInViewController) as? LoginViewController

        self.view.window?.rootViewController = signInViewController
        self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func ToTheMain(_ sender: Any) {
        let MainTabBarController = self.storyboard?.instantiateViewController(identifier : Constants.StoryboardOutTwo.MainTabBarController) as? ViewController

        self.view.window?.rootViewController = MainTabBarController
        self.view.window?.makeKeyAndVisible()
    }
}
