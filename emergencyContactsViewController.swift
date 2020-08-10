//
//  emergencyContactsViewController.swift
//  Assist-ands
//
//  Created by Student on 8/7/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class emergencyContactsViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var emergencyContacts: UITableView!
   
    var items = [ "911" , "Mom" , "Dad" , "Doctor Ramoray" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

            emergencyContacts.dataSource = self
    }
    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
        }
        
    func tableView(_ tableView: UITableView, cellForRowAt  indexPath: IndexPath) -> UITableViewCell{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
            cell.textLabel?.text = items[indexPath.row]
            return cell
        }
    }
