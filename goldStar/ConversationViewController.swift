//
//  ConversationViewController.swift
//  goldStar
//
//  Created by Marnie Reid on 5/27/20.
//  Copyright © 2020 Marnie Reid. All rights reserved.
//

import UIKit

class ConversationViewController: UIViewController {
    
    
    @IBOutlet weak var conversationLabel: UILabel!
    @IBOutlet weak var questionText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        conversationLabel.layer.cornerRadius = 14
        conversationLabel.clipsToBounds = true
        
        questionText.layer.cornerRadius = 14
        questionText.clipsToBounds = true
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "🌟Congrats, you've wished upon a star!🌟", message: "We'll notify you if both of you wish upon the same star💫.", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)

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
