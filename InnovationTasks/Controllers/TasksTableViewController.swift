//
//  TasksTableViewController.swift
//  InnovationTasks
//
//  Created by Felipe Guimarães on 09/08/21.
//

import UIKit


let categoryStudy = Category(name: "Study", color: UIColor.green)
let categoryWork = Category(name: "Work", color: UIColor.red)

let tasks: [Task] = [
    Task(name: "Create presentation for tomorrow", date: Date(), category: categoryWork),
    Task(name: "Study for math class", date: Date(), category: categoryStudy),
    Task(name: "Practice Swift", date: Date(), category: categoryStudy)
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
