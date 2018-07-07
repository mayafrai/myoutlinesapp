//
//  LogInViewController.swift
//  Myoutlines
//
//  Created by Maya Frai on 5/6/17.
//  Copyright © 2017 Maya Frai. All rights reserved.
//

import UIKit
import GoogleSignIn
import FacebookLogin
import FBSDKCoreKit
import FBSDKLoginKit


class SignInViewController: UIViewController, FBSDKLoginButtonDelegate {
    /**
     Sent to the delegate when the button was used to login.
     - Parameter loginButton: the sender
     - Parameter result: The results of the login
     - Parameter error: The error (if any) from the login
     */
    



    
    var first_nameLabel: UILabel!
    var last_nameLabel: UILabel!
    var usernameLabel: UILabel!
    var emailLabel: UILabel!
    var first_nameTextField: UITextField!
    var last_nameTextField: UITextField!
    var usernameTextField: UITextField!
    var emailTextField: UITextField!
    var logInButton: UIButton!
    
    var signInButton: GIDSignInButton!
    //@IBOutlet weak var signInButton: GIDSignInButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Sign In"
        
 
        
        if (FBSDKAccessToken.current() != nil)
        {
            // User is already logged in, do work such as go to next view controller.
            
        }
        else
        {
            let loginView : FBSDKLoginButton = FBSDKLoginButton()
            self.view.addSubview(loginView)
            loginView.center = self.view.center
            loginView.readPermissions = ["public_profile", "email", "user_friends"]
            loginView.delegate = self
            self.returnUserData()
        }

        
              setupViews()
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    

    func setupViews() {
        
        /// Basic constants for easily adjusting views
        let labelLeftEdgeInset: CGFloat = 20
        let textFieldTopInset: CGFloat = 30
        let textFieldHeight: CGFloat = 40
        let textFieldSeparator: CGFloat = 10
        let textFieldLabelWidth = view.frame.width * 0.2 - labelLeftEdgeInset
        let textFieldWidth = view.frame.width * 0.8 - labelLeftEdgeInset
        
        /// Create text field labels
        first_nameLabel = UILabel(frame: CGRect(x: labelLeftEdgeInset, y: textFieldTopInset, width: textFieldLabelWidth-100, height: textFieldHeight))
        last_nameLabel = UILabel(frame: CGRect(x: labelLeftEdgeInset, y: first_nameLabel.frame.origin.y + first_nameLabel.frame.height + textFieldSeparator, width: 100, height: textFieldHeight))
        usernameLabel = UILabel(frame: CGRect(x: labelLeftEdgeInset, y: last_nameLabel.frame.origin.y + last_nameLabel.frame.height + textFieldSeparator, width: 100, height: textFieldHeight))
        emailLabel = UILabel(frame: CGRect(x: labelLeftEdgeInset, y: usernameLabel.frame.origin.y + usernameLabel.frame.height + textFieldSeparator, width: 100, height: textFieldHeight))
        
        //first_nameLabel.text = "First Name: "
        last_nameLabel.text = "Name: "
        usernameLabel.text = "Username: "
        emailLabel.text = "Email: "
        
        /// Create text fields
        first_nameTextField = UITextField(frame: CGRect(x: first_nameLabel.frame.origin.x+20 + first_nameLabel.frame.width, y: first_nameLabel.frame.origin.y, width: textFieldWidth, height: textFieldHeight))
        first_nameTextField.borderStyle = .roundedRect
        first_nameTextField.backgroundColor = .red
        
        last_nameTextField = UITextField(frame: CGRect(x: last_nameLabel.frame.origin.x+15 + last_nameLabel.frame.width, y: last_nameLabel.frame.origin.y, width: textFieldWidth, height: textFieldHeight))
        last_nameTextField.borderStyle = .roundedRect
        
        usernameTextField = UITextField(frame: CGRect(x: usernameLabel.frame.origin.x+15 + usernameLabel.frame.width, y: usernameLabel.frame.origin.y, width: textFieldWidth, height: textFieldHeight))
        usernameTextField.borderStyle = .roundedRect
        
        emailTextField = UITextField(frame: CGRect(x: emailLabel.frame.origin.x+15 + emailLabel.frame.width, y: emailLabel.frame.origin.y, width: textFieldWidth, height: textFieldHeight))
        emailTextField.borderStyle = .roundedRect
        
        
        /// Create log in button
        logInButton = UIButton(frame: CGRect(x: 0, y: emailTextField.frame.origin.y + emailTextField.frame.height + textFieldSeparator * 2.0, width: view.frame.width / 2.0, height: 50))
        logInButton.center = CGPoint(x: view.center.x, y: logInButton.center.y)
        logInButton.setTitle("Sign In", for: .normal)
        logInButton.setTitleColor(UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1), for: .normal)
        logInButton.setTitleColor(.lightGray, for: .highlighted)
        //logInButton.addTarget(self, action: #selector(addStudentButtonWasPressed), for: .touchUpInside)
        
        
        /// Add subviews to our ViewController's view
        view.addSubview(first_nameLabel)
        view.addSubview(last_nameLabel)
        view.addSubview(usernameLabel)
        view.addSubview(emailLabel)
        //view.addSubview(first_nameTextField)
        view.addSubview(last_nameTextField)
        view.addSubview(emailTextField)
        view.addSubview(usernameTextField)
        view.addSubview(logInButton)

    }
    
    // Facebook delegate methods
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("User Logged In")
        
        if ((error) != nil)
        {
            // Process error
        }
        else if result.isCancelled {
            // Handle cancellations
        }
        else {
            // If you ask for multiple permissions at once, you
            // should check if specific permissions missing
            if result.grantedPermissions.contains("email")
            {
                // Do work
            }
            
            self.returnUserData()
        }
        }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
    
    func returnUserData()
    {
        let graphRequest : FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
        graphRequest.start(completionHandler: { (connection, result, error) -> Void in
            
            if ((error) != nil)
            {
                // Process error
                print("Error: \(error)")
            }
            else
            {
                let userName: [String: AnyObject] = result as! [String : AnyObject]
                //let userName : NSString = result.value(forKey: "name") as! NSString
                print("User Name is: \(userName)")
                //let userEmail : NSString = result.value(forKey: "email") as! NSString
                let userEmail: [String: AnyObject] = result as! [String : AnyObject]
                print("User Email is: \(userEmail)")
            }
        })
        }
    
    }




















        

