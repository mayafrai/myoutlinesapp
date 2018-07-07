//
//  BViewController.swift
//  Myoutlines
//
//  Created by Maya Frai on 5/4/17.
//  Copyright © 2017 Maya Frai. All rights reserved.
//

import UIKit
import DZNEmptyDataSet

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
    var tableView: UITableView!
    
    var outlines: [Outline] = [Outline]()
    
    override func viewDidLoad() {
        
        
        
        
        super.viewDidLoad()
        self.title = "Bookmarks"
        view.backgroundColor = .white
        
        self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Avenir-Medium", size: 20)!]
        
        //        // pod
        //        tableView.emptyDataSetSource = self
        //        tableView.emptyDataSetDelegate = self
        //        tableView.tableFooterView = UIView()
        //        tableView.reloadData()
        
        
        tableView = UITableView(frame: view.frame)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 100
        tableView.separatorColor = .black
        view.addSubview(tableView)
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // POD FOR EMPTY DATA SET
    
    //    func image(forEmptyDataSet scrollView: UIScrollView) -> UIImage {
    //        return UIImage(named: "empty_placeholder")!
    //    }
    //
    //    func title(forEmptyDataSet scrollView: UIScrollView) -> NSAttributedString {
    //        let text: String = "Please Allow Photo Access"
    //        let attributes: [AnyHashable: Any] = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont.boldSystemFont(ofSize: 18.0)]
    //        let attributedPlaceholder = NSAttributedString(string: text, attributes: attributes as? [String: Any])
    //        return attributedPlaceholder
    //
    //        //        let attributes: [AnyHashable: Any] = [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 18.0)), NSForegroundColorAttributeName: UIColor.darkGray]
    //        //return NSAttributedString(string: text, attributes: attributes)
    //    }
    //
    //    func description(forEmptyDataSet scrollView: UIScrollView) -> NSAttributedString {
    //        let text: String = "This allows you to share photos from your library and save photos to your camera roll."
    //        let paragraph = NSMutableParagraphStyle()
    //        paragraph.lineBreakMode = .byWordWrapping
    //        paragraph.alignment = .center
    //        let attributes: [AnyHashable: Any] = [NSFontAttributeName: UIFont.systemFont(ofSize: CGFloat(14.0)), NSForegroundColorAttributeName: UIColor.lightGray, NSParagraphStyleAttributeName: paragraph]
    //        return NSAttributedString(string: text, attributes: attributes as? [String: Any])
    //    }
    //
    //    func buttonTitle(forEmptyDataSet scrollView: UIScrollView, for state: UIControlState) -> NSAttributedString {
    //        let attributes: [AnyHashable: Any] = [NSFontAttributeName: UIFont.boldSystemFont(ofSize: CGFloat(17.0))]
    //        return NSAttributedString(string: "Continue", attributes: attributes as? [String: Any])
    //    }
    //
    //    func buttonImage(forEmptyDataSet scrollView: UIScrollView, for state: UIControlState) -> UIImage {
    //        return UIImage(named: "button_image")!
    //    }
    //
    //    func backgroundColor(forEmptyDataSet scrollView: UIScrollView) -> UIColor {
    //        return UIColor.white
    //    }
    //
    //    func customView(forEmptyDataSet scrollView: UIScrollView) -> UIView? {
    //        let activityView = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    //        activityView.startAnimating()
    //        return activityView
    //    }
    //
    //    func imageAnimation(forEmptyDataSet scrollView: UIScrollView) -> CAAnimation {
    //        let animation = CABasicAnimation(keyPath: "transform")
    //        animation.fromValue = NSValue(caTransform3D: CATransform3DIdentity)
    //        animation.toValue = NSValue(caTransform3D: CATransform3DMakeRotation(CGFloat(M_PI_2), 0.0, 0.0, 1.0))
    //        animation.duration = 0.25
    //        animation.isCumulative = true
    //        animation.repeatCount = MAXFLOAT
    //        return animation
    //    }
    //
    //    func verticalOffset(forEmptyDataSet scrollView: UIScrollView) -> CGFloat {
    //        return (tableView.tableHeaderView?.frame.size.height)!/2.0
    //    }
    //
    //    func spaceHeight(forEmptyDataSet scrollView: UIScrollView) -> CGFloat {
    //        return 20.0
    //    }
    //
    //    func emptyDataSetShouldDisplay(_ scrollView: UIScrollView) -> Bool {
    //        return true
    //    }
    //
    //    func emptyDataSetShouldAllowTouch(_ scrollView: UIScrollView) -> Bool {
    //        return true
    //    }
    //
    //    func emptyDataSetShouldAllowScroll(_ scrollView: UIScrollView) -> Bool {
    //        return true
    //    }
    //
    //    private func emptyDataSetShouldAllowImageViewAnimate(_ scrollView: UIScrollView) -> Bool {
    //        return true
    //    }
    //
    //    func emptyDataSet(_ scrollView: UIScrollView, didTap view: UIView) {
    //        // Do something
    //    }
    //
    //    func emptyDataSet(_ scrollView: UIScrollView, didTap button: UIButton) {
    //        // Do something
    //    }
    //
    //
    //
    //
    //
    
    // POD FOR EMPTY DATA SET END
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        
        cell.textLabel?.text = "Placeholder Bookmark"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if outlines.count > 0 {
            return outlines.count
        } else {
            TableViewHelper.EmptyMessage(message: "You don't have any bookmarks yet. \n You can bookmark as many outlines as you want", viewController: self)
            return 0
        }
        
        //return outlines.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("hi")
        }
    }
    
    
    
    
    
}
