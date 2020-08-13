//
//  emergencyContactsViewController.swift
//  Assist-ands
//
//  Created by Student on 8/7/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class emergencyContactsViewController: UIViewController, UITableViewDataSource {
//connecting the tableview to the View Controller as an outlet
    @IBOutlet weak var emergencyContacts: UITableView!
   //items are what we are listing
    var items = [ "911" , "Mom" , "Dad" , "Doctor Ramoray" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

            emergencyContacts.dataSource = self
    }   // named table view cell "Cell"
    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
        }
        
    func tableView(_ tableView: UITableView, cellForRowAt  indexPath: IndexPath) -> UITableViewCell{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
            cell.textLabel?.text = items[indexPath.row]
            return cell
        }
    }
