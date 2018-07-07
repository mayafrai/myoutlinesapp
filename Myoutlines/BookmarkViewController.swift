//
//  BookmarkViewController.swift
//  Myoutlines
//
//  Created by Maya Frai on 5/4/17.
//  Copyright © 2017 Maya Frai. All rights reserved.
//

import UIKit
import DGElasticPullToRefresh

var bookmarkedOutlines: [Outline] = [Outline]()

class TableViewHelper {
    
    class func EmptyMessage(message:String, viewController:UITableViewController) {
        let messageLabel = UILabel(frame: CGRect(x: 0,y: 0, width: viewController.view.bounds.size.width, height:viewController.view.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .black
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center;
        messageLabel.font = UIFont(name: "Avenir-Medium", size: 15)
        messageLabel.sizeToFit()
        
        viewController.tableView.backgroundView = messageLabel;
        viewController.tableView.separatorStyle = .none;
    }
}


class BookmarkViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    deinit {
        tableView.dg_removePullToRefresh()
    }
    

    var tableView: UITableView!



    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "Bookmarks"
        view.backgroundColor = .white
        
        
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedStringKey.font: UIFont(name: "Avenir-Medium", size: 20)!]
        navigationItem.prompt = "Refresh to view outlines"
        
        tableView = UITableView(frame: view.frame)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 60
        tableView.separatorColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)
        tableView.tableFooterView = UIView(frame: .zero)
        view.addSubview(tableView)
        

        // Initialize tableView: pull to refresh
        let loadingView = DGElasticPullToRefreshLoadingViewCircle()
        loadingView.tintColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)
        tableView.dg_addPullToRefreshWithActionHandler({ 
            // Add your logic here
            // Do not forget to call dg_stopLoading() at the end
            self.tableView.reloadData()
            
            self.tableView.dg_stopLoading()
        }, loadingView: loadingView)
        tableView.dg_setPullToRefreshFillColor(UIColor(red: 57/255.0, green: 67/255.0, blue: 89/255.0, alpha: 1.0))
        tableView.dg_setPullToRefreshBackgroundColor(tableView.backgroundColor!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        
        let bookmarkedOutline = bookmarkedOutlines[indexPath.row]
        
        cell.textLabel?.text = bookmarkedOutline.outlineName
        
        cell.accessoryType = .disclosureIndicator
        
        cell.textLabel?.font = UIFont(name: "Avenir-Medium", size: 16)
        
        return cell
        
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if bookmarkedOutlines.count != 0 {
            tableView.separatorStyle = .singleLine
            tableView.backgroundView = nil
        } else {
            let bookmark = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.width))
            bookmark.image = #imageLiteral(resourceName: "bookmark")
            bookmark.contentMode = .scaleAspectFit
            bookmark.contentMode = .center
            tableView.backgroundView = bookmark
            tableView.separatorStyle = .none
        }
        return bookmarkedOutlines.count
        
    }


    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let bookmarkedOutline = bookmarkedOutlines[indexPath.row]
        
        let thirdViewController = OutlineViewController()
        thirdViewController.outline = bookmarkedOutline
        
        
        navigationController?.pushViewController(thirdViewController, animated: true)
        
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            bookmarkedOutlines.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    
    
    
    
    
}
