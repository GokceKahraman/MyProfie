//
//  ViewController.swift
//  MyProfie
//
//  Created by Gökçe Kahraman on 23.11.2022.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    @IBOutlet weak var userProfileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userAdressNameLabel: UILabel!
    @IBOutlet weak var followersCountLabel: UILabel!
    @IBOutlet weak var placesCountLabel: UILabel!
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var profileAboutLabelText: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tripsContainer: UIView!
    @IBOutlet weak var statsContainer: UIView!
    @IBOutlet weak var savedContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userProfileImageView.roundedImage()
    }
    
    @IBAction func showComponents(_ sender: AnyObject) {
//
//        segmentedControl.backgroundColor = .clear
//        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        if(sender.selectedSegmentIndex == 0)
        {
            UIView.animate(withDuration: 0.5, animations:{
                self.tripsContainer.alpha = 1
                self.statsContainer.alpha = 0
                self.savedContainer.alpha = 0
            })
        }
        else if(sender.selectedSegmentIndex == 1)
        {
            UIView.animate(withDuration: 0.5, animations:{
                self.statsContainer.alpha = 1
                self.tripsContainer.alpha = 0
                self.savedContainer.alpha = 0
            })
        }
        else{
            UIView.animate(withDuration: 0.5, animations:{
                self.savedContainer.alpha = 1
                self.statsContainer.alpha = 0
                self.tripsContainer.alpha = 0
            })
        }
    }
    
    @IBAction func editOnClickButton(_ sender: Any) {
    }
}

