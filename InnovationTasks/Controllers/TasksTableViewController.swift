//
//  TasksTableViewController.swift
//  InnovationTasks
//
//  Created by Felipe Guimarães on 09/08/21.
//

import UIKit


let category = Category(name: "Shopping List", color: UIColor.green)
let tasks: [Task] = [
    Task(name: "Create presentation for tomorrow", date: Date(), category: category),
    Task(name: "This is my shopping list", date: Date(), category: category),
]

class TasksTableViewController: UITableViewController {

    private var dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        let task = tasks[indexPath.row]
        
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormatter.string(from: task.date)
        
        cell.categoryLabel.text = task.category.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskDescriptionLabel.text = task.name
        
        return cell
    }
}
