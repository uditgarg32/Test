//
//  ChoseTopicView.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/16/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit

class ChooseTopicView: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Creates the title of this table view
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        header.textLabel?.text = "Choose Your Topic!"
        header.textLabel?.frame = header.frame
        header.textLabel?.textAlignment = NSTextAlignment.center
    }
    
    
}
