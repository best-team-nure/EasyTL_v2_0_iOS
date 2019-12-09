//
//  User.swift
//  EASY TL v3
//
//  Created by Дарья on 02.12.2019.
//  Copyright © 2019 Easy Traffic Laws. All rights reserved.
//

import Foundation
import Firebase

class User {
    var id : String
    var name : String
    var topicProgress : Int
    var totalQuestions : Int 
    var correctQuestions : Int
    var numbOfTopics : Int
    var totalTests : Int
    var passedTests : Int
    var averageCorrectAnswers : Int
    var averageTime : Int
    var topicNumber : Int
    
    //For initialization with 2 fields(Creating a new user)
    init(id:String, name:String){
        self.id = id
        self.name = name
        self.topicProgress = 0
        self.correctQuestions = 0
        self.numbOfTopics = 6
        self.totalTests = 0
        self.totalQuestions = 0
        self.passedTests = 0
        self.averageCorrectAnswers = 0
        self.averageTime = 0
        self.topicNumber = 0
    }
    
    //For initialization with user profile fields
     init(id:String, name:String, topicProgress:Int, totalQuestions:Int, correctQuestions:Int, totalTests:Int, passedTests:Int, averageCorrectAnswers:Int, averageTime:Int){
        
        self.id = id
        self.name = name
        self.topicProgress = topicProgress
        self.correctQuestions = correctQuestions
        self.numbOfTopics = 6
        self.totalTests = totalTests
        self.totalQuestions = totalQuestions
        self.passedTests = passedTests
        self.averageCorrectAnswers = averageCorrectAnswers
        self.averageTime = averageTime
        self.topicNumber = topicProgress
    }
    
}
