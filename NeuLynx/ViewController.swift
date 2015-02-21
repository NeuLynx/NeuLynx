//
//  ViewController.swift
//  NeuLynx
//
//  Created by Ronald Hernandez on 2/19/15.
//  Copyright (c) 2015 NeuLynx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        
        
    }
    
    @IBAction func registeredButtonPressed(sender: AnyObject) {
        
    }
    
    @IBAction func FbLoginButtonPressed(sender: AnyObject) {
        var permissions = ["public_profile", "email"]
        
        PFFacebookUtils.logInWithPermissions(permissions, {
            (user: PFUser!, error: NSError!) -> Void in
            if user == nil {
                NSLog("Uh oh. The user cancelled the Facebook login.")
            } else if user.isNew {
                NSLog("User signed up and logged in through Facebook!")
            } else {
                NSLog("User logged in through Facebook!")
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

