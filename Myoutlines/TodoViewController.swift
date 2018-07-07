//
//  TodoViewController.swift
//  Myoutlines
//
//  Created by Maya Frai on 5/1/17.
//  Copyright © 2017 Maya Frai. All rights reserved.
//

import UIKit
import DGElasticPullToRefresh
import SwipeCellKit
import PMAlertController


// pull to refresh
class TodoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    deinit {
        tableView.dg_removePullToRefresh()
    }
    
    var tableView: UITableView!
    var todos: [String] = []
    var details: [String] = []
    var refresh: UIRefreshControl!
    var subjectName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "To Do List"
        
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedStringKey.font: UIFont(name: "Avenir-Medium", size: 20)!]
        
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBookmark))
        navigationItem.rightBarButtonItem = addButton
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)
    
        
        let checkButton = UIBarButtonItem(image: #imageLiteral(resourceName: "check"), style: .plain, target: self, action: #selector(didTap))
        navigationItem.leftBarButtonItem = checkButton
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)
        
        tableView = UITableView(frame: view.frame)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 60
        tableView.separatorColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)
        view.addSubview(tableView)
        
        tableView.allowsSelectionDuringEditing = true
        
        createTodos()
    }
    
    
    func createTodos() {
        todos = []
    }

    @objc func addBookmark() {
        
        let alertVC = PMAlertController(title: "New Todo", description: "What do you have to do?", image: UIImage(named: "img.png"), style: .alert)
        
        alertVC.addTextField { (textField) in
            textField?.placeholder = "E.g. Go over classes in Java"
        }
        
        alertVC.addTextField { (textField2) in
            textField2?.placeholder = "Subject Name"
        }

        
        alertVC.addAction(PMAlertAction(title: "Add", style: .default, action : { action in
            if let todo = alertVC.textFields.first?.text {
                self.todos.append(todo)
                let detail = alertVC.textFields.last?.text
                self.details.append(detail!)
                self.tableView.reloadData()
            }
        }))
        
        
        alertVC.addAction(PMAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //var numOfSections: Int = 0
        if todos.count != 0 {
            tableView.separatorStyle = .singleLine
            //numOfSections = 1
            tableView.backgroundView = nil
        } else {
            let list = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.width))
            list.image = #imageLiteral(resourceName: "list")
            list.contentMode = .scaleAspectFit
            list.contentMode = .center
            tableView.backgroundView = list
            tableView.separatorStyle = .none
  
        }
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let alertVC = PMAlertController(title: "Task Completed", description: "Click to remove this todo", image: UIImage(named: "img.png"), style: .alert)
        
        alertVC.addAction(PMAlertAction(title: "Remove", style: .default, action: { () -> Void in
            self.todos.remove(at: indexPath.row)
            self.tableView.reloadData()
        }))
        
        alertVC.addAction(PMAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
        let todo = todos[indexPath.row]
        cell.textLabel?.text = todo
        let detail = details[indexPath.row]
        cell.detailTextLabel?.text = detail
        cell.textLabel?.font = UIFont(name: "Avenir-Medium", size: 18)
        
        return cell
    }
    
    @objc func didTap() {
        tableView.setEditing(true, animated: true)
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle(rawValue: 3)!
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.todos.remove(at: indexPath.row)

            tableView.reloadData()
        }
    }
    
}
