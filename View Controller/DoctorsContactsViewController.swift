//
//  DoctorsContactsViewController.swift
//  Assist-ands
//
//  Created by Student on 8/10/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class DoctorsContactsViewController: UIViewController, UITableViewDataSource {
  //connecting the tableview to the View Controller as an outlet
    @IBOutlet weak var DoctorsContacts: UITableView!
    //items are what we are listing
    var items = [ "Doctor Ramoray", "Dr.Fields(Herbal Medicines)", "Pharmacist", "Physical Therapist", "Orthodontist", "Optometrist" ]
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    // named table view cell "Cell"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        DoctorsContacts.dataSource = self
    }
        
    }
    

