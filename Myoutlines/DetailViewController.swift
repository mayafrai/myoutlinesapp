//
//  DetailViewController.swift
//  Myoutlines 
//
//  Created by Maya Frai on 3/15/17.
//  Copyright © 2017 Maya Frai. All rights reserved.
//

import UIKit
import PMAlertController


class Outline {
    
    var outlineName: String
    init(outlineName: String, name: String, outline1: String, outline2: String, outline3: String, outline4: String, outline5: String,
         outline6: String, outline7: String, outline8: String, outline9: String, outline10: String, outline11: String, outline12: String, outline13: String, outline14: String, outline15: String, outline16: String, outline17: String, outline18: String, outline19: String, outline20: String, outline21: String, outline22: String, outline23: String, outline24: String, outline25: String, outline26: String, outline27: String, outline1Text: String) {
        
        self.outlineName = outlineName
    }
    
}


var outlines: [Outline] = [Outline]()


class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var subject: Subject!
    var tableView: UITableView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.title = subject.name
        navigationItem.prompt = "Swipe right to bookmark an outline"
        
        createOutlines()
        
        tableView = UITableView(frame: view.frame)
        tableView.dataSource = self
        tableView.delegate = self
        
        self.navigationController?.navigationBar.tintColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)


        view.addSubview(tableView)
        
        // delete unused cells
        tableView.tableFooterView = UIView(frame: .zero)


        
    }
    
    
    func createOutlines() {
        
        let outline1 = Outline(outlineName: subject.outline1, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                               outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                               outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                               outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                               outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                               outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                               outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                               outline27: subject.outline27,
                               outline1Text: subject.outline1Text)
        
        let outline2 = Outline(outlineName: subject.outline2, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                               outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10,outline11: subject.outline11,
                               outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                               outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                               outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                               outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                               outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                               outline27: subject.outline27,
                               outline1Text: subject.outline1Text)
        
        let outline3 = Outline(outlineName: subject.outline3, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                               outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                               outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                               outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                               outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                               outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                               outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                               outline27: subject.outline27,
                               outline1Text: subject.outline1Text)
        
        let outline4 = Outline(outlineName: subject.outline4, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                               outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                               outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                               outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                               outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                               outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                               outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                               outline27: subject.outline27,
                               outline1Text: subject.outline1Text)
        
        let outline5 = Outline(outlineName: subject.outline5, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                               outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                               outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                               outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                               outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                               outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                               outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                               outline27: subject.outline27,
                               outline1Text: subject.outline1Text)
        
        let outline6 = Outline(outlineName: subject.outline6, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                               outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                               outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                               outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                               outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                               outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                               outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                               outline27: subject.outline27,
                               outline1Text: subject.outline1Text)
        
        let outline7 = Outline(outlineName: subject.outline7, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                               outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                               outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                               outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                               outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                               outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                               outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                               outline27: subject.outline27,
                               outline1Text: subject.outline1Text)
        
        let outline8 = Outline(outlineName: subject.outline8, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                               outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                               outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                               outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                               outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                               outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                               outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                               outline27: subject.outline27,
                               outline1Text: subject.outline1Text)
        
        let outline9 = Outline(outlineName: subject.outline9, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                               outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                               outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                               outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                               outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                               outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                               outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                               outline27: subject.outline27,
                               outline1Text: subject.outline1Text)
        
        let outline10 = Outline(outlineName: subject.outline10, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline11 = Outline(outlineName: subject.outline11, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline12 = Outline(outlineName: subject.outline12, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline13 = Outline(outlineName: subject.outline13, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline14 = Outline(outlineName: subject.outline14, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        
        let outline15 = Outline(outlineName: subject.outline15, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline16 = Outline(outlineName: subject.outline16, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline17 = Outline(outlineName: subject.outline17, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline18 = Outline(outlineName: subject.outline18, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,                                 outline1Text: subject.outline1Text)
        
        let outline19 = Outline(outlineName: subject.outline19, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline20 = Outline(outlineName: subject.outline20, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,                                 outline1Text: subject.outline1Text)
        
        let outline21 = Outline(outlineName: subject.outline21, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline22 = Outline(outlineName: subject.outline22, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline23 = Outline(outlineName: subject.outline23, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline24 = Outline(outlineName: subject.outline24, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline25 = Outline(outlineName: subject.outline25, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
        let outline26 = Outline(outlineName: subject.outline26, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,                                 outline1Text: subject.outline1Text)
        
        let outline27 = Outline(outlineName: subject.outline27, name: subject.name, outline1: subject.outline1, outline2: subject.outline2, outline3: subject.outline3, outline4: subject.outline4, outline5: subject.outline5,
                                outline6: subject.outline6, outline7: subject.outline8, outline8: subject.outline9, outline9: subject.outline9, outline10: subject.outline10, outline11: subject.outline11,
                                outline12: subject.outline12, outline13: subject.outline13, outline14: subject.outline14,
                                outline15: subject.outline15, outline16: subject.outline16, outline17: subject.outline17,
                                outline18: subject.outline18, outline19: subject.outline19, outline20: subject.outline20,
                                outline21: subject.outline21, outline22: subject.outline22, outline23: subject.outline23,
                                outline24: subject.outline24, outline25: subject.outline25, outline26: subject.outline26,
                                outline27: subject.outline27,
                                outline1Text: subject.outline1Text)
        
       
        
        if subject.name == "U.S. History" {
            outlines = [outline1, outline2, outline3, outline4, outline5, outline6, outline7, outline8, outline9, outline10, outline11, outline12, outline13, outline14, outline15, outline16, outline17, outline18, outline19, outline20,
                        outline21, outline22, outline23, outline24, outline25, outline26, outline27]
        }
        
        if subject.name == "Economics" {
            outlines = [outline1, outline2, outline3, outline4, outline5, outline6, outline7, outline8, outline9, outline10, outline11, outline12, outline13, outline14, outline15, outline16]
        }
        
        if subject.name == "Computer Science" {
            outlines = [outline1, outline2, outline3, outline4, outline5, outline6, outline7, outline8, outline9, outline10, outline11, outline12, outline13, outline14, outline15]
        }
        
        if subject.name == "European History" {
            outlines = [outline1, outline2, outline3, outline4, outline5, outline6, outline7, outline8, outline9, outline10, outline11, outline12, outline13, outline14, outline15, outline16, outline17]
        }
        
        if subject.name == "Biology" {
            outlines = [outline1, outline2, outline3, outline4, outline5, outline6, outline7, outline8, outline9, outline10, outline11, outline12]
        }
        
        if subject.name == "Spanish" {
            outlines = [outline1, outline2, outline3, outline4, outline5, outline6, outline7, outline8, outline9, outline10, outline11, outline12, outline13, outline14, outline15, outline16, outline17, outline18, outline19]
        }
        
        if subject.name == "Statistics" {
            outlines = [outline1, outline2, outline3, outline4]
        }
        
        if subject.name == "Study Resources" {
            outlines = [outline1, outline2, outline3, outline4, outline5, outline6, outline7, outline8, outline9, outline10, outline11, outline12, outline13, outline14, outline15, outline16, outline17, outline18, outline19]
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        
        let outline = outlines[indexPath.row]
        
        cell.textLabel?.text = outline.outlineName
       
        cell.textLabel?.font = UIFont(name: "Avenir-Medium", size: 16)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return outlines.count

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let outline = outlines[indexPath.row]
        
        let thirdViewController = OutlineViewController()
        thirdViewController.outline = outline
        
        navigationController?.pushViewController(thirdViewController, animated: true)
        
        
    }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let bookmarkAction = UITableViewRowAction(style: .normal, title: "Bookmark") { (rowAction, indexPath) in
            //TODO: bookmark the row at indexPath here
            bookmarkedOutlines.append(outlines[indexPath.row])
 
            let alertVC = PMAlertController(title: outlines[indexPath.row].outlineName + "\n" + "Has Been Added to Bookmarks", description: "Refresh the bookmarks page to view your outlines", image: UIImage(named: "img.png"), style: .alert)
            
            alertVC.addAction(PMAlertAction(title: "Done", style: .default, action: { () -> Void in
            }))
            
            self.present(alertVC, animated: true, completion: nil)

        }
        bookmarkAction.backgroundColor = .blue
        
        return [bookmarkAction]
        
    }
    
    
    
    
    
    
    
    
    
    
    
   

    
    
}
