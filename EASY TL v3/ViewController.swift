//
//  ViewController.swift
//  EASY TL v3
//
//  Created by User on 9/26/19.
//  Copyright © 2019 Easy Traffic Laws. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    let topics = ["Общие положения", "Правила обгона", "Движение со спец. сигналами", "Обязательства и права пешехода", "Обязательства и права пассажиров", "Требования к велосипедам"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        myTableView.dataSource = self
//        myTableView.delegate = self
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return topics.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "listitem", for: indexPath)
//
//        cell.textLabel!.text = topics[indexPath.row]
//
//        return cell
//    }
}

