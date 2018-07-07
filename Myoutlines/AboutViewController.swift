//
//  AboutViewController.swift
//  Myoutlines
//
//  Created by Maya Frai on 7/11/17.
//  Copyright © 2017 Maya Frai. All rights reserved.
//

import UIKit


class Cell {
    
    var name: String
    var text: String
    
    init(name: String, text: String) {
        self.name = name
        self.text = text
    }
}

class AboutViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var bodyText: UITextView!
    var tableView: UITableView!
    var cells: [Cell] = [Cell]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "About"
        
        tableView = UITableView(frame: view.frame)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 60
        tableView.separatorColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)
        tableView.tableFooterView = UIView(frame: .zero)
        view.addSubview(tableView)

        createCells()
       
    }
    
    func createCells() {
        let cell1 = Cell(name: "Info", text: "")
        let cell2 = Cell(name: "Third Party Software", text: "")
        let cell3 = Cell(name: "Credits", text: "")
        let cell4 = Cell(name: "Privacy Policy", text: "")
        let cell5 = Cell(name: "Terms and Conditions", text: "")
        
        cells = [cell1, cell2, cell3, cell4, cell5]
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        
        let info_cell = cells[indexPath.row]
        
        cell.textLabel?.text = info_cell.name
        
        cell.accessoryType = .disclosureIndicator
        
        cell.textLabel?.font = UIFont(name: "Avenir-Medium", size: 16)
        
        return cell

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let cell = cells[indexPath.row]
        
        let adViewController = ADViewController()
        adViewController.cell = cell
        
        navigationController?.pushViewController(adViewController, animated: true)
    }
   
}
