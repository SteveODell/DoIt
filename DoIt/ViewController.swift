//
//  ViewController.swift
//  DoIt
//
//  Created by Steve @work on 4/29/17.
//  Copyright © 2017 Twenty-One-Bravo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "‼️ \(task.name) ‼️"
            
        } else {
            cell.textLabel?.text = task.name
        }
        return cell
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Q3 Project"
        task1.important = true
        
        let task2 = Task()
        task2.name = "Walk the dog"
        task2.important = false
        
        let task3 = Task()
        task3.name = "Make dinner"
        task3.important = false
        
        return [task1, task2, task3]
        
        
    }

}

