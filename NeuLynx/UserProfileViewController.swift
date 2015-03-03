//
//  UserProfileViewController.swift
//  NeuLynx
//
//  Created by Ronald Hernandez on 2/21/15.
//  Copyright (c) 2015 NeuLynx. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    
    
    
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
        
        let title = "Gender"
        let message = "Please select your gender"
        
        let optionOneText = "Male"
        let optionTwoText = "Female"
        
        let optionMenu = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.ActionSheet)
    
    
        let actionOne = UIAlertAction(title: optionOneText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.genderLabel.text = optionOneText
        })
        
        let actionTwo = UIAlertAction(title: optionTwoText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.genderLabel.text = optionTwoText
         })
        
        let cancelOption = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            println("Cancelled")
        })
        optionMenu.addAction(actionOne)
        optionMenu.addAction(actionTwo)
        optionMenu.addAction(cancelOption)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    
    @IBAction func editOrientationButtonPressed(sender: AnyObject) {
        let title = "Orientation"
        let message = "Please select your Orientation"
        
        let optionOneText = "Straight"
        let optionTwoText = "Gay"
        let optionThreeText = "Lesbian"
        let optionFourText = "Bisexual"
        let optionFiveText = "Transexual"
        
        
        
        
        let optionMenu = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        
        let actionOne = UIAlertAction(title: optionOneText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.orientationLabel.text = optionOneText
        })
        
        let actionTwo = UIAlertAction(title: optionTwoText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.orientationLabel.text = optionTwoText
        })
        
        let actionThree = UIAlertAction(title: optionThreeText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.orientationLabel.text = optionThreeText
        })
        let actionFour = UIAlertAction(title: optionFourText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.orientationLabel.text = optionFourText
        })
        let actionFive = UIAlertAction(title: optionFiveText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.orientationLabel.text = optionFiveText
        })
        
        let cancelOption = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            println("Cancelled")
        })
        optionMenu.addAction(actionOne)
        optionMenu.addAction(actionTwo)
        optionMenu.addAction(actionThree)
        optionMenu.addAction(actionFour)
        optionMenu.addAction(actionFive)
        optionMenu.addAction(cancelOption)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
        
        
        
        
    }
    @IBAction func editPersonalityButtonPressed(sender: AnyObject) {
        let title = "Personality"
        let message = "Please select your Personality"
        
        let optionOneText = "Adventurous"
        let optionTwoText = "Shy"
        let optionThreeText = "Funny"
        let optionFourText = "Social"
        let optionFiveText = "Wild"
        
        
        
        
        let optionMenu = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        
        let actionOne = UIAlertAction(title: optionOneText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.personalityLabel.text = optionOneText
        })
        
        let actionTwo = UIAlertAction(title: optionTwoText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.personalityLabel.text = optionTwoText
        })
        
        let actionThree = UIAlertAction(title: optionThreeText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.personalityLabel.text = optionThreeText
        })
        let actionFour = UIAlertAction(title: optionFourText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.personalityLabel.text = optionFourText
        })
        let actionFive = UIAlertAction(title: optionFiveText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.personalityLabel.text = optionFiveText
        })
        
        let cancelOption = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            println("Cancelled")
        })
        optionMenu.addAction(actionOne)
        optionMenu.addAction(actionTwo)
        optionMenu.addAction(actionThree)
        optionMenu.addAction(actionFour)
        optionMenu.addAction(actionFive)
        optionMenu.addAction(cancelOption)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
   
   
    @IBAction func editLanguagesButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func editFact1ButtonPressed(sender: AnyObject) {
        
        let title = "Travel Facts"
        let message = "Which best reflects your travel personality?"
        
        let optionOneText = "The Party Animal"
        let optionTwoText = "The Planner"
        let optionThreeText = "No-Expense/Zero Budget"
        let optionFourText = "The Chiller"
        let optionFiveText = "The Foodie"
        
        
        
        
        let optionMenu = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        
        let actionOne = UIAlertAction(title: optionOneText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.fact1Label.text = optionOneText
        })
        
        let actionTwo = UIAlertAction(title: optionTwoText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.fact1Label.text = optionTwoText
        })
        
        let actionThree = UIAlertAction(title: optionThreeText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.fact1Label.text = optionThreeText
        })
        let actionFour = UIAlertAction(title: optionFourText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.fact1Label.text = optionFourText
        })
        let actionFive = UIAlertAction(title: optionFiveText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.fact1Label.text = optionFiveText
        })
        
        let cancelOption = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            println("Cancelled")
        })
        optionMenu.addAction(actionOne)
        optionMenu.addAction(actionTwo)
        optionMenu.addAction(actionThree)
        optionMenu.addAction(actionFour)
        optionMenu.addAction(actionFive)
        optionMenu.addAction(cancelOption)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
  
    @IBAction func editFact2ButtonPressed(sender: AnyObject) {
        let title = "Travel Facts"
        let message = "Which best reflects your travel personality?"
        
        let optionOneText = "The Minimalist"
        let optionTwoText = "The Repeater"
        let optionThreeText = "The Lone Wolf"
        let optionFourText = "The Know-It-All"
        let optionFiveText = "The Group"
        
        
        
        
        let optionMenu = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        
        let actionOne = UIAlertAction(title: optionOneText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.fact2Label.text = optionOneText
        })
        
        let actionTwo = UIAlertAction(title: optionTwoText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.fact2Label.text = optionTwoText
        })
        
        let actionThree = UIAlertAction(title: optionThreeText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.fact2Label.text = optionThreeText
        })
        let actionFour = UIAlertAction(title: optionFourText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.fact2Label.text = optionFourText
        })
        let actionFive = UIAlertAction(title: optionFiveText, style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.fact2Label.text = optionFiveText
        })
        
        let cancelOption = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            println("Cancelled")
        })
        optionMenu.addAction(actionOne)
        optionMenu.addAction(actionTwo)
        optionMenu.addAction(actionThree)
        optionMenu.addAction(actionFour)
        optionMenu.addAction(actionFive)
        optionMenu.addAction(cancelOption)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
        
    }
    
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("jumpBackToMainScreen", sender: self)
    }
    
    
    @IBAction func nextButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("jumpToMap", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //define the parse user
        var user = PFUser.currentUser()
        
        // Do any additional setup after loading the view.
        
        // Make the profile picture circular.
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
        self.profileImage.clipsToBounds = true
       
        
        
       
        //get profile pic from facebook
    var FBSession = PFFacebookUtils.session()
        var accessToken = FBSession.accessTokenData.accessToken
        
        let url = NSURL(string: "https://graph.facebook.com/me/picture?type=large&return_ssl_resources=1&access_token="+accessToken)
        
        let urlRequest = NSURLRequest(URL: url!)
        
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler: {
            response, data, error in
            
            let image = UIImage(data: data)
            //set profile pic = to image
            self.profileImage.image = image
            
            
            
            user["profileImage"] = data
            
            
            FBRequestConnection.startForMeWithCompletionHandler({
                connection, result, error in
                
                user["gender"] = result["gender"]
                user["name"] = result["name"]
                self.nameLabel.text = user["name"] as? String
                self.genderLabel.text = user["gender"] as? String
               
            })
            
        })
        user.save()
        
    
    
        
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
