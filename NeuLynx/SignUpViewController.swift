//
//  SignUpViewController.swift
//  NeuLynx
//
//  Created by Ronald Hernandez on 2/21/15.
//  Copyright (c) 2015 NeuLynx. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate{

  
    
    @IBOutlet weak var username: UITextField!

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    
    
  
    
    // FACEBOOK LOG IN
    @IBAction func fbLoginButtonPressed(sender: AnyObject) {
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
                self.performSegueWithIdentifier("jumpToUserProfile", sender: self)
                
            } else {
                NSLog("User logged in through Facebook!")
                
                //make sure to remove
                self.performSegueWithIdentifier("jumpToMap", sender: self)
            }
        })
        

        
    }
    
    @IBAction func editDidEnd(sender: AnyObject) {
        
        
        if isValidEmail(username.text) == false{
            username.layer.cornerRadius = 8
            username.layer.borderWidth = 2
            username.layer.borderColor = UIColor.redColor().CGColor
            username.placeholder = "Please enter a valid email"
            
            
            
        } else {
            username.layer.cornerRadius = 8
            username.layer.borderWidth = 2
            username.layer.borderColor =
                UIColor.greenColor().CGColor
            username.textColor = UIColor.darkGrayColor()
        }
        
        
        if count(password.text) < 8 || count(confirmPassword.text) < 8 {
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.redColor().CGColor
            password.textColor = UIColor.darkGrayColor()
            password.placeholder = "Password must be at least 8 characters"
            
            confirmPassword.layer.cornerRadius = 8
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.redColor().CGColor
            confirmPassword.textColor = UIColor.darkGrayColor()
            confirmPassword.placeholder = "password must be at least 8 characters"
            
        } else if password.text != confirmPassword.text{
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.redColor().CGColor
            password.textColor = UIColor.darkGrayColor()
            password.placeholder = "Password does not match"
            
            confirmPassword.layer.cornerRadius = 8
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.redColor().CGColor
            confirmPassword.textColor = UIColor.darkGrayColor()
            confirmPassword.placeholder = "Password does not match"
            
        }
        else {
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.greenColor().CGColor
            confirmPassword.layer.cornerRadius = 8
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.greenColor().CGColor
        }
        
    }
    
    
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        
        self.performSegueWithIdentifier("jumpBackToMainScreen", sender: self)
    }
    
   
    @IBAction func nextButtonPressed(sender: AnyObject) {
        //self.performSegueWithIdentifier("jumpToUserProfile", sender: self)
        
       
        
        
        var error = ""
        
        
        if username.text == "" || password.text == "" || confirmPassword.text == "" {
            //make the borders of each field red if any of them are empty
            username.layer.cornerRadius = 8
            username.layer.borderWidth = 2
            username.layer.borderColor = UIColor.redColor().CGColor
            
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.redColor().CGColor
            
            confirmPassword.layer.cornerRadius = 8
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.redColor().CGColor
            
            error = "Please enter a valid username and password"
            
        } else if count(password.text) < 8 || count(confirmPassword.text) < 8 {
            
            
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.redColor().CGColor
            
            confirmPassword.layer.cornerRadius = 8
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.redColor().CGColor
            
            error = "Password must be at least 8 characters"
        } else if password.text != confirmPassword.text {
            
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.redColor().CGColor
            
            confirmPassword.layer.cornerRadius = 8
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.redColor().CGColor
            
            error = "Passwords do not match! Please try again!"
        }
        
        //set up alert and display to user
        if error != "" {
            
            
            self.displayAlert("Error in Form", error: error)
            
        } else {
            activityIndicator = UIActivityIndicatorView(frame: CGRectMake(0, 0, 100, 100))
            activityIndicator.center = self.view.center
            activityIndicator.hidesWhenStopped = true
            activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.WhiteLarge
            view.addSubview(activityIndicator)
            activityIndicator.startAnimating()
            UIApplication.sharedApplication().beginIgnoringInteractionEvents()
            
            var user = PFUser()
            user.username = username.text
            user.password = password.text
            
            user.signUpInBackgroundWithBlock {
                (succeeded: Bool!, signupError: NSError!) -> Void in
                
                self.activityIndicator.stopAnimating()
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                
                if signupError == nil  {
                    // Hooray! Let them use the app now.
                    
                       println("signed up")
                 
                self.performSegueWithIdentifier("jumpToUserProfile2", sender: self)
                    
                    
                 
                    
                    
                } else {
                    if let errorString = signupError.userInfo?["error"] as? NSString {
                        
                        error = errorString as! String
                        
                    } else {
                        
                        error = "Please try again later."
                        
                    }
                    
                    self.displayAlert("Could Not Sign Up", error: error)
                    
                }
            }

            
        }
        
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      username.textColor = UIColor.darkGrayColor()
        
       
        
      
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
    func isValidPassword(testStr:String) -> Bool {
        // 8 characters. one uppercase
        var PASSWORD_REGEX = "^(?=.*?[A-Z]).{8,}$"
        
        
        let range = testStr.rangeOfString(PASSWORD_REGEX, options:.RegularExpressionSearch)
        let result = range != nil ? true : false
        return result

    }
    func displayAlert(title:String, error:String) {
        
        var alert = UIAlertController(title: title, message: error, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { action in
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
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
