//
//  SignInViewController.swift
//  NeuLynx
//
//  Created by Ronald Hernandez on 2/21/15.
//  Copyright (c) 2015 NeuLynx. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func FBLoginButtonPressed(sender: AnyObject) {
    }
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("backToFirstScreen", sender: self)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
