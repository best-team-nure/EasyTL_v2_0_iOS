//
//  TopicViewController.swift
//  EASY TL v3
//
//  Created by User on 09.11.2019.
//  Copyright © 2019 Easy Traffic Laws. All rights reserved.
//

import Foundation
import UIKit

class TopicViewControler: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: label.bottomAnchor).isActive = true
    }
}


