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
    
    //LanguageSelected is to keep track of which languages the user selected to make it easier to display.
    
    var languageSelected:[Bool] = [false, false, false, false, false, false]
    //languages is the actual array that will be saved to parse.
    var languages: [String] = []
    
    
    @IBOutlet weak var english: UIImageView!
    
    @IBOutlet weak var spanish: UIImageView!
    
    @IBOutlet weak var french: UIImageView!
    
    @IBOutlet weak var chinese: UIImageView!
    
    @IBOutlet weak var portuguese: UIImageView!
    
    @IBOutlet weak var german: UIImageView!
    
    
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
        
        
        self.performSegueWithIdentifier("jumpToLanguages", sender: self)
        
    }
    
    @IBAction func editFact1ButtonPressed(sender: AnyObject) {
        
        let title = "Travel Facts"
        let message = "Which best reflects your travel personality?"
        
        let optionOneText = "The Party Animal"
        let optionTwoText = "The Planner"
        let optionThreeText = "Zero Budget"
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
        
        
         var user = PFUser.currentUser()
        
        user["gender"] = genderLabel.text
        user["name"] =  nameLabel.text
        user["orientation"] = orientationLabel.text
        user["personality"] = personalityLabel.text
        user["languages"] = languages
        user["typeOfTraveler1"] = fact1Label.text
        user["typeOfTraveler2"] = fact2Label.text
        
        user.save()
        
        
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
            
                self.nameLabel.text = result["name"] as? String
                self.genderLabel.text = result["gender"] as? String
               
            })
            
        })
        user.save()
        
    
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        
        if languageSelected[0] == true{
            english.alpha = 1.0
            languages.append("English")
            
        } else if languageSelected[0] == false {
            english.alpha = 0.1
        }
        
        
        if languageSelected[1] == true{
            spanish.alpha = 1.0
            languages.append("Spanish")
            
        } else if languageSelected[1] == false {
            spanish.alpha = 0.1
        }
        
        if languageSelected[2] == true {
            french.alpha = 1.0
             languages.append("French")
        }
        
        if languageSelected[3] == true {
            chinese.alpha = 1.0
             languages.append("Chinese")
        }
        if languageSelected[4] == true{
            portuguese.alpha = 1.0
             languages.append("Portuguese")
        }
        if languageSelected[5] == true {
            german.alpha = 1.0
            
            languages.append("German")
        }
        
        for element in languages {
            println(element)
        }
     
        
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
