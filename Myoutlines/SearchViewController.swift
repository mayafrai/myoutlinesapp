//
//  SearchViewController.swift
//  Myoutlines
//
//  Created by Maya Frai on 4/30/17.
//  Copyright © 2017 Maya Frai. All rights reserved.
//

import UIKit



//var allOutlines: [Outline] = [Outline]()

class SearchViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate {
    

    
    var searchBar: UISearchBar!
    var tableView: UITableView!
    var subject: Subject!
    var subjects: [Subject] = [Subject]()
    //var allOutlines: [Outline] = [Outline]()

    var filteredOutlines: [Outline] = [Outline]()
    var searchActive : Bool = false
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Search"
        view.backgroundColor = UIColor.white
        
        
        searchBar = UISearchBar(frame: CGRect(x: 0, y: navigationController!.navigationBar.frame.maxY, width: view.frame.width, height: 49))
        searchBar.delegate = self
        searchBar.placeholder = "Search MyOutlines"
        
    
        
        //tableView = UITableView(frame: view.frame)
        tableView = UITableView(frame: CGRect(x: 0, y: searchBar!.frame.maxY-65, width: view.frame.width, height: view.frame.height))
        tableView.dataSource = self
        tableView.delegate = self

        view.addSubview(tableView)

        view.addSubview(searchBar)
        
        UIView.setAnimationsEnabled(false)
        self.tableView.beginUpdates()
        self.tableView.reloadSections(NSIndexSet(index: 1) as IndexSet, with: UITableViewRowAnimation.none)
        self.tableView.endUpdates()
        

        //addUIElements()
        
        //createOutlines()
        
        self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Avenir-Medium", size: 20)!]
        
        //tableView.reloadData()

    }
    
    // search bar methods
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchActive = true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchActive = false
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false
    }
    
    func filerContentForSearchText(searchText: String, scope: String = "All") {
        filteredOutlines = outlines.filter { outline in
            return outline.outlineName.lowercased().contains(searchText.lowercased())
        }
        tableView.reloadData()
    }
    
    
    
    
    
    
    
    
    
    
    
//    func createOutlines() {
//        allOutlines = []
//    }
    
    
    // table view methods
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return NSLocalizedString("All Outlines", comment: "")
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        
        let new_outline: Outline
        
        if searchActive == true && searchBar.text != "" {
            new_outline = filteredOutlines[indexPath.row]
        } else {
            new_outline = outlines[indexPath.row]
        }
        
        let outline = outlines[indexPath.row]
        
        cell.textLabel?.text = outline.outlineName
        
        cell.textLabel?.font = UIFont(name: "Avenir-Medium", size: 16)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchActive == true && searchBar.text != "" {
            return filteredOutlines.count
        }
        
        return outlines.count
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let outline = outlines[indexPath.row]
        
        let thirdViewController = OutlineViewController()
        thirdViewController.outline = outline
        // = allOutline
        
        navigationController?.pushViewController(thirdViewController, animated: true)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
   

}


