//
//  MapViewController.swift
//  NeuLynx
//
//  Created by Ronald Hernandez on 2/21/15.
//  Copyright (c) 2015 NeuLynx. All rights reserved.
//

import UIKit
import MapKit // allows to use all commands for map and manipulate the map.


class MapViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    
        // Do any additional setup after loading the view.
        // Make the profile picture circular.
        profileImage.layer.borderWidth=1.0
        profileImage.layer.masksToBounds = false
        profileImage.layer.cornerRadius = profileImage.frame.size.width / 2;
      
         profileImage.layer.borderColor = UIColor.whiteColor().CGColor
        profileImage.layer.cornerRadius = 13
        
        profileImage.clipsToBounds = true
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
         profileImage.layer.cornerRadius = profileImage.frame.size.width / 2;
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
