//
//  SignUpViewController.swift
//  NeuLynx
//
//  Created by Ronald Hernandez on 2/21/15.
//  Copyright (c) 2015 NeuLynx. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    @IBAction func fbLoginButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("backToFirstScreen", sender: self)
    }
    @IBAction func nextButtonPressed(sender: AnyObject) {
        //self.performSegueWithIdentifier("jumpToUserProfile", sender: self)
        
        var error = ""
        
        
        if email.text == "" || password.text == "" || confirmPassword.text == "" {
            //make the borders of each field red if any of them are empty
            email.layer.cornerRadius = 8
             email.layer.borderWidth = 2
            email.layer.borderColor = UIColor.redColor().CGColor
            
            password.layer.cornerRadius = 8
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.redColor().CGColor
            
            confirmPassword.layer.cornerRadius = 8
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor = UIColor.redColor().CGColor
            
            error = "Please enter a username an password"
           
        } else if isValidEmail(email.text) == false{
                email.layer.cornerRadius = 8
                email.layer.borderWidth = 2
                email.layer.borderColor = UIColor.redColor().CGColor
                email.text = "Please enter a valid email"
                
                
                
            } else {
                email.layer.cornerRadius = 8
                email.layer.borderWidth = 2
                email.layer.borderColor = UIColor.greenColor().CGColor
        }
        //set up alert and display to user
        if error != "" {
            
            var alert = UIAlertController(title: "Error in Register Form", message: error, preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler:{
                action  in
               self.dismissViewControllerAnimated(true, completion: nil)
            }))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
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
