//
//  ViewController.swift
//  assignmentNotebook
//
//  Created by Julio Rivera on 2/26/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
// video 5 min 4.44

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var newAssignmentTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "Hello"
        return cell
    }


}

