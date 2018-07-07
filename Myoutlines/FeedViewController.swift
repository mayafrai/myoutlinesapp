//
//  FeedViewController.swift
//  Myoutlines
//
//  Created by Maya Frai on 3/15/17.
//  Copyright © 2017 Maya Frai. All rights reserved.
//

import UIKit
import RevealingSplashView


class Subject {
    
    var name: String
    var outline1: String
    var outline2: String
    var outline3: String
    var outline4: String
    var outline5: String
    var outline6: String
    var outline7: String
    var outline8: String
    var outline9: String
    var outline10: String
    
    var outline11: String
    var outline12: String
    var outline13: String
    var outline14: String
    var outline15: String
    var outline16: String
    var outline17: String
    var outline18: String
    var outline19: String
    var outline20: String
    var outline21: String
    var outline22: String
    var outline23: String
    var outline24: String
    var outline25: String
    var outline26: String
    var outline27: String
    
    
    
    var outline1Text: String
    var description: String
    
    var icon: UIImage

    init(name: String, outline1: String, outline2: String, outline3: String, outline4: String = "", outline5: String = "",
         outline6: String = "", outline7: String = "", outline8: String = "", outline9: String = "", outline10: String = "", outline11: String = "", outline12: String = "", outline13: String = "", outline14: String = "", outline15: String = "", outline16: String = "", outline17: String = "", outline18: String = "", outline19: String = "", outline20: String = "", outline21: String = "", outline22: String = "", outline23: String = "", outline24: String = "", outline25: String = "", outline26: String = "", outline27: String = "", outline1Text: String, icon: UIImage, description: String) {
        self.name = name
        self.outline1 = outline1
        self.outline2 = outline2
        self.outline3 = outline3
        self.outline4 = outline4
        self.outline5 = outline5
        self.outline6 = outline6
        self.outline7 = outline7
        self.outline8 = outline8
        self.outline9 = outline9
        self.outline10 = outline10
        self.outline11 = outline11
        self.outline12 = outline12
        self.outline13 = outline13
        self.outline14 = outline14
        self.outline15 = outline15
        self.outline16 = outline16
        self.outline17 = outline17
        self.outline18 = outline18
        self.outline19 = outline19
        self.outline20 = outline20
        self.outline21 = outline21
        self.outline22 = outline22
        self.outline23 = outline23
        self.outline24 = outline24
        self.outline25 = outline25
        self.outline26 = outline26
        self.outline27 = outline27
        
        
        
        self.outline1Text = outline1Text
        self.icon = icon
        self.description = description
    }
    
}

class FeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView: UITableView!
    var subjects: [Subject] = [Subject]()
    var subtitles: [Subject] = [Subject]()
    var imageView: UIImageView!

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //Initialize a revealing Splash with with the iconImage, the initial size and the background color
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "m-1")!,iconInitialSize: CGSize(width: 200, height: 200), backgroundColor: UIColor(red:0.33, green:0.81, blue:0.81, alpha:1.0))
        
        let window = UIApplication.shared.keyWindow
        window?.addSubview(revealingSplashView)
        //Adds the revealing splash view as a sub view
        //self.view.addSubview(revealingSplashView)

        //Starts animation
        revealingSplashView.startAnimation(){
        }
        
        self.navigationController?.navigationBar.tintColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)
        view.backgroundColor = .white
        self.title = "Home"
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedStringKey.font: UIFont(name: "Avenir-Medium", size: 20)!]
        self.tabBarController?.tabBar.tintColor = UIColor(red:0.47, green:0.80, blue:0.80, alpha:1.0)
        
        for tab: UIViewController in (tabBarController?.viewControllers)! {
            tab.tabBarItem.setTitleTextAttributes([ NSAttributedStringKey.font : UIFont(name: "Avenir-Light", size: 10)!], for: .normal)
            
        }
        
        
    
        createSubjects()
        tableView = UITableView(frame: view.frame)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 90
        tableView.sectionIndexBackgroundColor = .gray
        tableView.separatorColor = .black
        view.addSubview(tableView)
        tableView.tableFooterView = UIView(frame: .zero)
        
        
        let infoButton = UIBarButtonItem(image: #imageLiteral(resourceName: "info"), style: .plain, target: self, action: #selector(userTappedInfoButton))
        navigationItem.rightBarButtonItem = infoButton

    }
    
    @objc func userTappedInfoButton() {
        let aboutViewController = AboutViewController()
        navigationController?.pushViewController(aboutViewController, animated: true)
    }
    
   
    
    

    
    func createSubjects() {
        
        let history = Subject(name: "U.S. History", outline1: "Empire In Transition", outline2: "American Revolution", outline3: "The Constitution and the New Republic",
                              outline4: "The Jeffersonian Era", outline5: "Varieties of American Nationalism",
                              outline6: "Jacksonian America", outline7: "Democrats vs Whigs",
                              outline8: "Cotton, Slavery, and the South", outline9: "Antebellum, Culture, and Reform", outline10: "The Impending Crisis", outline11: "The Civil War", outline12: "Reconstruction and the New South", outline13: "Industrial Supremacy", outline14: "The Age of the City", outline15: "From Crisis to Empire", outline16: "The Progressives", outline17: "America and the Great War", outline18: "The New Era", outline19: "The Great Depression", outline20: "The New Deal", outline21: "The Global Crisis", outline22: "America in a World at War", outline23: "The Cold War", outline24: "The Affluent Society", outline25: "Civil Rights, Vietnam, Liberalism", outline26: "The Crisis of Authority", outline27: "Age of Reagan",
                              outline1Text: "hello", icon: #imageLiteral(resourceName: "abraham-lincoln"), description: "Learn everything you need to know from the first Constitutional Convention to the Reagan era")
        
        
        let econ = Subject(name: "Economics", outline1: "Thinking Like an Economist", outline2: "Comparative Advantage", outline3: "Markets and Competition", outline4: "Elasticity and its Application",
                           outline5: "The Efficiency of Markets", outline6: "Supply, Demand, and Gov't Policies",
                           outline7: "Theory of Consumer Choice", outline8: "Application of International Trade", outline9: "Externalities",
                           outline10: "Public Goods", outline11: "Design of the Tax System", outline12: "Firms in Competitive Markets", outline13: "Monopolies", outline14: "Monopolistic Competition", outline15: "Oligopoly and Game Theory", outline16: "Income Inequality", outline1Text: "h", icon: #imageLiteral(resourceName: "line-chart"),
                           description: "Learn the science behind production, distribution, and consumption of goods and services")

        
        
        let cs = Subject(name: "Computer Science", outline1: "Getting Started with Python", outline2: "Python: Functions and Modules", outline3: "Python: Strings and Expressions", outline4: "Python: Specifications and Testing", outline5: "Python: Objects and Memory",
                         outline6: "Python: Lists, Sequences, and For-Loops", outline7: "Python: Recursion", outline8: "Python: Classes",
                        outline9: "Python: Subclasses and Inheritance", outline10: "Getting Started with Java",outline11: "Java: Classes", outline12: "Java: Data Structures", outline13: "Java: Abstract Classes and Interfaces", outline14: "Java: Trees and Graphs", outline15: "Java: Time Complexity, Searching, Sorting", outline1Text: "text", icon: #imageLiteral(resourceName: "laptop-1"), description: "Go over the basics and more advanced topics of computer science in Java and Python")
        
        let eurohist = Subject(name: "European History", outline1: "The Renaissance", outline2: "The Protestant Reformation",  outline3: "Centralization of Political Power", outline4: "Cromwell and the Glorious Revolution", outline5: "The Scientific Revolution", outline6: "The Industrial Revolution", outline7: "The Enlightenment", outline8: "The French Revolution", outline9: "Europe from 1815 to 1848", outline10: "The Revolutions of 1848 and Nationalism", outline11: "Unification: Italy and Germany", outline12: "Domestic Problems In Europe", outline13: "World War I", outline14: "Twentieth Century Culture", outline15: "The Russian Revolution", outline16: "The Rise of Fascism and Authoritarianism", outline17: "World War II", outline1Text: "test", icon: #imageLiteral(resourceName: "europe"), description: "Review concepts, ideologies, and details about great European movements, wars, and leaders.")

        
        let biology = Subject(name: "Biology", outline1: "DNA Replication", outline2: "Viral Replication", outline3: "Cell Cycle and Communication", outline4: "Cell and Membrane Permeability", outline5: "Cellular Energetics", outline6: "Water and the Chemistry of Life", outline7: "Excretory System", outline8: "Respiratory System", outline9: "Digestive System", outline10: "Lymphatic and Immune Systems", outline11: "Circulatory System", outline12: "Skeletal System", outline1Text: "test", icon: #imageLiteral(resourceName: "biology-1"), description: "Understand the main concepts of biology from DNA replication to the human body systems")

        
       let spanish = Subject(name: "Spanish", outline1: "Present Indicative", outline2: "Ser vs. Estar and Comparisons",
                             outline3: "Pronouns: Indirect and Direct", outline4: "Reflexive Pronouns", outline5: "Preterite vs. Imperfect Tense",
                             outline6: "Present perfect vs. Past perfect tense", outline7: "Subjunctive vs. Indicative Tense", outline8: "Nominal Clauses",
                             outline9: "Adjective Clauses", outline10: "Adverbial Clauses", outline11: "Clauses with Si", outline12: "Future and Future Perfect Tense", outline13: "Indefinite Words: Positive and Negative", outline14: "El Se Accidental",outline15: "Imperative Tense: Mandatos", outline16: "El Se Impersonal", outline17: "Relative Pronouns", outline18: "Prepositions", outline19: "Compound Prepositions", outline1Text: "test", icon: #imageLiteral(resourceName: "spanish-1"), description: "Review your Spanish skills or learn grammar and verbal rules for the first time")
        
        let stats = Subject(name: "Statistics", outline1: "Sampling in Statistics", outline2: "Frequency Distributions",
                            outline3: "Probability Part One", outline4: "Probability Part Two", outline1Text: "test", icon: #imageLiteral(resourceName: "analytics"), description: "Learn the foundation of statistical sampling, data analysis, and modeling")
        
        
        
        
        
        subjects = [history, econ, cs, eurohist, biology, spanish, stats]
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
                
        let subject = subjects[indexPath.row]
        
        cell.textLabel?.text = subject.name
        cell.textLabel?.font = UIFont(name: "Avenir-Heavy", size: 20)
        cell.detailTextLabel?.text = subject.description
        cell.detailTextLabel?.textAlignment = .natural
        cell.detailTextLabel?.font = UIFont(name: "Avenir-Roman", size: 13)
        cell.detailTextLabel?.sizeToFit()
        cell.detailTextLabel?.numberOfLines = 3
        cell.imageView?.image = subject.icon
        cell.imageView?.clipsToBounds = true
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let subject = subjects[indexPath.row]
        
        let detailViewController = DetailViewController()
        detailViewController.subject = subject
        
        navigationController?.pushViewController(detailViewController, animated: true)
        

    }
    
    class func requestReview() {
        
    }

    
    
}
