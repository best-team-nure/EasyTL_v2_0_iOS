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

    @IBOutlet weak var NavigationItem: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleLogout(_ target: UIButton) {
        try! Auth.auth().signOut()
        let signInViewController = self.storyboard?.instantiateViewController(identifier : Constants.StoryboardOut.signInViewController) as? LoginViewController
            
        self.view.window?.rootViewController = signInViewController
        self.view.window?.makeKeyAndVisible()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
