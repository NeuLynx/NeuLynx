//
//  SignUpViewController.swift
//  NeuLynx
//
//  Created by Ronald Hernandez on 2/21/15.
//  Copyright (c) 2015 NeuLynx. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate{

  
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    
    
  
    
    // FACEBOOK LOG IN
    @IBAction func fbLoginButtonPressed(sender: AnyObject) {
        
        var fbLoginView: FBLoginView = FBLoginView(readPermissions: ["email", "public_profile"])
        
        var permissions = ["public_profile", "email"]
        
        
        
        PFFacebookUtils.logInWithPermissions(permissions, block: {
            (user: PFUser!, error: NSError!) -> Void in
            if user == nil {
                NSLog("Uh oh. The user cancelled the Facebook login.")
                
                
            } else if user.isNew {
                println("the user is new")
                NSLog("User signed up and logged in through Facebook!")
                
                println("it reached this point")
                self.performSegueWithIdentifier("fbJumpToUserProfile", sender: self)
                
            } else {
                NSLog("User logged in through Facebook!")
                
                //make sure to remove
                self.performSegueWithIdentifier("jumpToMap", sender: self)
            }
        })
        

        
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("backToFirstScreen", sender: self)
    }
    @IBAction func nextButtonPressed(sender: AnyObject) {
        //self.performSegueWithIdentifier("jumpToUserProfile", sender: self)
        
        var error = ""
        
        
        if email.text == "" || password.text == "" || confirmPassword.text == "" {
            //make the borders of each field red if any of them are empty
           /* email.layer.cornerRadius = 8
             email.layer.borderWidth = 2
            email.layer.borderColor = UIColor.redColor().CGColor
            
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.redColor().CGColor
            
            confirmPassword.layer.cornerRadius = 8
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.redColor().CGColor*/
            
            error = "Please enter a username and password"
           
        }
        
            if isValidEmail(email.text) == false{
                email.layer.cornerRadius = 8
                email.layer.borderWidth = 2
                email.layer.borderColor = UIColor.redColor().CGColor
                email.text = "Please enter a valid email"
                
                
                
            } else {
                email.layer.cornerRadius = 8
                email.layer.borderWidth = 2
                email.layer.borderColor = UIColor.greenColor().CGColor
                
        }
        
        
        if count(password.text) < 8 {
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.redColor().CGColor
            
            
        }else {
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.greenColor().CGColor
            
        }
        
        
        //set up alert and display to user
        /*if error != "" {
            
            var alert = UIAlertController(title: "Error in Register Form", message: error, preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler:{
                action  in
               self.dismissViewControllerAnimated(true, completion: nil)
            }))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }*/
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        email.delegate = self
        password.delegate = self
        
       
        
      
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
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
