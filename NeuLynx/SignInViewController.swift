//
//  SignInViewController.swift
//  NeuLynx
//
//  Created by Ronald Hernandez on 2/21/15.
//  Copyright (c) 2015 NeuLynx. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
       var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    
    
    @IBAction func FBLoginButtonPressed(sender: AnyObject) {
        
        
        activityIndicator = UIActivityIndicatorView(frame: CGRectMake(0, 0, 100, 100))
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.WhiteLarge
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        var fbLoginView: FBLoginView = FBLoginView(readPermissions: ["email", "public_profile"])
        
        var permissions = ["public_profile", "email"]
        
      
        
        PFFacebookUtils.logInWithPermissions(permissions, block: {
            (user: PFUser!, error: NSError!) -> Void in
            
            self.activityIndicator.stopAnimating()
            UIApplication.sharedApplication().endIgnoringInteractionEvents()
            
            if user == nil {
                NSLog("Uh oh. The user cancelled the Facebook login.")
                
                
            } else if user.isNew {
                println("the user is new")
                NSLog("User signed up and logged in through Facebook!")
                
                println("it reached this point")
                self.performSegueWithIdentifier("fbUserJumpToUserProfile", sender: self)
                
            } else {
                NSLog("User logged in through Facebook!")
                
                //make sure to remove
                self.performSegueWithIdentifier("jumpToMap", sender: self)
            }
        })
        
    }
    
    @IBAction func editDidEnd(sender: AnyObject) {
        
        if isValidEmail(email.text) == false{
            email.layer.cornerRadius = 8
            email.layer.borderWidth = 2
            email.layer.borderColor = UIColor.redColor().CGColor
            email.placeholder = "Please enter a valid email"
            
            
            
        } else {
            email.layer.cornerRadius = 8
            email.layer.borderWidth = 2
            email.layer.borderColor =
                UIColor.greenColor().CGColor
            email.textColor = UIColor.darkGrayColor()
        }
        
        
        if count(password.text) < 8  {
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.redColor().CGColor
            password.textColor = UIColor.darkGrayColor()
            password.placeholder = "Password must be at least 8 characters"
          
            
        }
        else {
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.greenColor().CGColor
          
        }
        
        
    }
    
    
    
    
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("jumpBackToMainScreen", sender: self)
    }
    @IBAction func forgotPasswordButtonPressed(sender: AnyObject) {
    }
    @IBAction func nextButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("jumpToMap", sender: self)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func isValidEmail(testStr:String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let range = testStr.rangeOfString(emailRegEx, options:.RegularExpressionSearch)
        let result = range != nil ? true : false
        return result
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
