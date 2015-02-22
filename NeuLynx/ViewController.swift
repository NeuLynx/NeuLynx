//
//  ViewController.swift
//  NeuLynx
//
//  Created by Ronald Hernandez on 2/19/15.
//  Copyright (c) 2015 NeuLynx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unsuccessfulloginlabel: UILabel!
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        
        self.performSegueWithIdentifier("jumpToLoginScreen", sender: self)
        
       /*     var loginAlert:UIAlertController = UIAlertController(title: "Sign Up / Login", message: "Please sign up or login", preferredStyle: UIAlertControllerStyle.Alert)
            
            loginAlert.addTextFieldWithConfigurationHandler({
                textfield in
                textfield.placeholder = "Your username"
            })
            
            loginAlert.addTextFieldWithConfigurationHandler({
                textfield in
                textfield.placeholder = "Your password"
                textfield.secureTextEntry = true
            })
            
            loginAlert.addAction(UIAlertAction(title: "Login", style: UIAlertActionStyle.Default, handler: {
                alertAction in
                let textFields:NSArray = loginAlert.textFields!
                let usernameTextfield:UITextField = textFields.objectAtIndex(0) as UITextField
                let passwordTextfield:UITextField = textFields.objectAtIndex(1) as UITextField
                
                PFUser.logInWithUsernameInBackground(usernameTextfield.text, password: passwordTextfield.text){
                    (user:PFUser!, error:NSError!)->Void in
                    if user != nil{
                        println("Login successfull")
                    }else{
                        println("Login failed")
                    }
                    
                    
                }
                
                
                
                
            }))
            
        
        loginAlert.addAction(UIAlertAction(title: "Sign Up", style: UIAlertActionStyle.Default, handler: {
            alertAction in
            let textFields:NSArray = loginAlert.textFields!
            let usernameTextfield:UITextField = textFields.objectAtIndex(0) as UITextField
            let passwordTextfield:UITextField = textFields.objectAtIndex(1) as UITextField
            
            var sweeter:PFUser = PFUser()
            sweeter.username = usernameTextfield.text
            sweeter.password = passwordTextfield.text
            
            sweeter.signUpInBackgroundWithBlock{
                (success:Bool!, error:NSError!)->Void in
                if error == nil{
                    println("Sign Up successfull")
                }else{
                    let errorString = error.localizedDescription
                    println(errorString)
                }
                
                
            }
            
            
            
        }))

        
            self.presentViewController(loginAlert, animated: true, completion: nil)
        
    */
    

    }

    @IBAction func registeredButtonPressed(sender: AnyObject) {
        
     self.performSegueWithIdentifier("jumpToRegisterScreen", sender: self)
    
    
    }

    @IBAction func FbLoginButtonPressed(sender: AnyObject) {
        var permissions = ["public_profile", "email"]
        
        self.unsuccessfulloginlabel.alpha = 0
        
        PFFacebookUtils.logInWithPermissions(permissions, {
            (user: PFUser!, error: NSError!) -> Void in
            if user == nil {
                NSLog("Uh oh. The user cancelled the Facebook login.")
                self.unsuccessfulloginlabel.alpha = 1
            } else if user.isNew {
                NSLog("User signed up and logged in through Facebook!")
                self.performSegueWithIdentifier("jumpToUserProfile", sender: self)
                
            } else {
                NSLog("User logged in through Facebook!")
                //make sure to remove 
                self.performSegueWithIdentifier("jumpToUserProfile", sender: self)
            }
        })
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      /*  //push notification
        var push = PFPush()
        push.setMessage("Yasss Bitch!")
        push.sendPushInBackgroundWithBlock({
            (isSuccessful: Bool!, error: NSError!) -> Void in
            
        println(isSuccessful)
    })
    */
        // Do any additional setup after loading the view, typically from a nib.
        
        
       
        
        if PFUser.currentUser() != nil {
            println("USER IS LOGGED IN!!")
        }
        
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

