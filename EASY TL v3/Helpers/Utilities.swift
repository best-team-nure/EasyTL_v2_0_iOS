//
//  Utilities.swift
//  EASY TL v3
//
//  Created by Дарья on 18.11.2019.
//  Copyright © 2019 Easy Traffic Laws. All rights reserved.
//

import Foundation
import UIKit

class Utilities{
    
    //Validate a password that is 6 or more characters
    static func isPasswordValid(_ password : String) -> Bool{
        
        let passwordTest = NSPredicate(format : "SELF MATCHES %@", "^[A-Za-z0-9]{6,}")
        return passwordTest.evaluate(with : password)
    }
    
    //Validate an email for the right format
    static func isEmailValid(_ email : String?) -> Bool {
        
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }
}
