//
//  UserProfileViewController.swift
//  NeuLynx
//
//  Created by Ronald Hernandez on 2/21/15.
//  Copyright (c) 2015 NeuLynx. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    @IBOutlet weak var profilePicture: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var orientationLabel: UILabel!
   

    @IBOutlet weak var personalityLabel: UILabel!
  
    @IBOutlet weak var languagesLabel: UILabel!
    
    @IBOutlet weak var fact1Label: UILabel!
    
    @IBOutlet weak var fact2Label: UILabel!
    
    @IBAction func
        
        editProfilePictureButtonPressed(sender: AnyObject) {
    }
   
  
    @IBAction func editNameButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func editGenderButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func editOrientationButtonPressed(sender: AnyObject) {
    }
    @IBAction func editPersonalityButtonPressed(sender: AnyObject) {
    }
   
   
    @IBAction func editLanguagesButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func editFact1ButtonPressed(sender: AnyObject) {
    }
  
    @IBAction func editFact2ButtonPressed(sender: AnyObject) {
    }
  
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("jumpBackToFirstScreen", sender: self)
    }

    @IBAction func nextButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("jumpToMap", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Make the profile picture circular.
        self.profilePicture.layer.cornerRadius = self.profilePicture.frame.size.width / 2;
        self.profilePicture.clipsToBounds = true
       
        
        
        
        //get profile pic from facebook
    var FBSession = PFFacebookUtils.session()
        var accessToken = FBSession.accessTokenData.accessToken
        
        let url = NSURL(string: "https://graph.facebook.com/me/picture?type=large&return_ssl_resources=1&access_token="+accessToken)
        
        let urlRequest = NSURLRequest(URL: url!)
        
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler: {
            response, data, error in
            
            let image = UIImage(data: data)
            //set profile pic = to image
            self.profilePicture.image = image
            
            var user = PFUser.currentUser()
            
            user["profileImage"] = data
            
            user.save()
            
        })
        
        
        
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
