//
//  ProfilesViewController.swift
//  goldStar
//
//  Created by Marnie Reid on 5/25/20.
//  Copyright © 2020 Marnie Reid. All rights reserved.
//

import UIKit

class ProfilesViewController: UIViewController {
    
    
    var previousVC = MatchesTableViewController()
    var selectedMatch = Matches()
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profPicOne: UIImageView!
    @IBOutlet weak var profPicTwo: UIImageView!
    @IBOutlet weak var bioAnswerText: UITextView!
    
    @IBOutlet weak var profPicTwoLabel: UITextView!
    @IBOutlet weak var bioQuestion: UITextView!
    @IBOutlet weak var profPicOneLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.systemYellow]

        
        nameLabel.text = selectedMatch.name
        bioAnswerText.text = selectedMatch.bioAnswer
        profPicOne.image = selectedMatch.profilePicTop
        profPicTwo.image = selectedMatch.profilePicBottom
        
        profPicOne.layer.cornerRadius = profPicOne.frame.size.width / 2
        profPicOne.clipsToBounds = true
        profPicOne.layer.borderWidth = 3
        profPicOne.layer.borderColor = UIColor.white.cgColor
        
        profPicTwo.layer.cornerRadius = profPicOne.frame.size.width / 2
        profPicTwo.clipsToBounds = true
        profPicTwo.layer.borderWidth = 3
        profPicTwo.layer.borderColor = UIColor.white.cgColor
        
        nameLabel.layer.cornerRadius = 14
        nameLabel.clipsToBounds = true
        
        profPicOneLabel.layer.cornerRadius = 14
        profPicOneLabel.clipsToBounds = true
        
        profPicTwoLabel.layer.cornerRadius = 14
        profPicTwoLabel.clipsToBounds = true
        
        bioQuestion.layer.cornerRadius = 14
        bioQuestion.clipsToBounds = true
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
