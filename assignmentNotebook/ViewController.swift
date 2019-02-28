//
//  ViewController.swift
//  assignmentNotebook
//
//  Created by Julio Rivera on 2/26/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var newAssignmentTextField: UITextField!
    var assignment: [Assignment] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        var assignment1 = Assignment(name: "Math Worksheet")
        var assignment2 = Assignment(name: "Huck Finn Essay")
        var assignment3 = Assignment(name: "Assignment Notebook App")
        assignment = [assignment1, assignment2, assignment3]
        
    }
    
    @IBAction func addAssignment(_ sender: UIBarButtonItem) {
        if let newAssignmentName = newAssignmentTextField.text {
            let newAssignment = Assignment(name: newAssignmentName)
            assignment.append(newAssignment)
            tableView.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assignment.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            let currentAssigmentName = assignment[indexPath.row].name
            cell.textLabel?.text = currentAssigmentName
            return cell
        } else {
        return UITableViewCell()
    }
}
    
    
}
