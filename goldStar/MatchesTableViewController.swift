//
//  MatchesTableViewController.swift
//  goldStar
//
//  Created by Marnie Reid on 5/24/20.
//  Copyright © 2020 Marnie Reid. All rights reserved.
//

import UIKit

class MatchesTableViewController: UITableViewController {
    
    var matches : [Matches] = []

    @IBOutlet weak var tableViewPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        matches = createMatches()
        
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.systemYellow]
    
    }

    func createMatches() -> [Matches] {

      let matchOne = Matches()
      matchOne.name = "Marnie"
      matchOne.bioAnswer = "You have to get up and place your trash in the trashcan. I'm always tempted to show off my ~*nonexistent*~ skillz and go for a three pointer!"
        matchOne.profilePicTop = UIImage(imageLiteralResourceName: "marnieProfPic")
        matchOne.profilePicBottom = #imageLiteral(resourceName: "marnieProfPicTwo")
        matchOne.age = 27
        matchOne.position = "High School Math"
        

      let matchTwo = Matches()
        matchTwo.name = "Lucas"
        matchTwo.bioAnswer = "No headphones in class. If I want to jam out to Ariana Grande and Lady Gaga's new hit single 'Rain On Me' in the middle of class, then that's what I'm gonna do!"
        matchTwo.profilePicTop = #imageLiteral(resourceName: "lucasProfPicOne")
        matchTwo.profilePicBottom = #imageLiteral(resourceName: "lucasProfPicTwo")
        matchTwo.age = 22
        matchTwo.position = "7th Grade English and Social Studies"
        
        let matchThree = Matches()
        matchThree.name = "Amy"
        //matchThree.bioAnswer = ""
       //matchThree.profilePicTop =
        //matchThree.profilePicBottom =
        //matchThree.age =
        matchThree.position = "Coding SuperStar"
        
        let matchFour = Matches()
        matchFour.name = "Ellen Mary"
        //matchFour.bioAnswer = ""
        matchFour.position = "Leadership RockStar"
        
        let matchFive = Matches()
        matchFive.name = "Karlie"
        
        let matchSix = Matches()
        matchSix.name = "Josh"
        
        let matchSeven = Matches()
        matchSeven.name = "Zach"
        
        let matchEight = Matches()
        matchEight.name = "Nick"
        
        let matchNine = Matches()
        matchNine.name = "Priyanka"
        
        let matchTen = Matches()
        matchTen.name = "Joe"
        
      return [matchOne, matchTwo, matchThree, matchFour, matchFive, matchSix, matchSeven, matchEight, matchNine, matchTen]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.tableView.frame.size.height / 12
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let match = matches[indexPath.row]
        //let cellPic = match.profilePicTop
        
        cell.textLabel?.text = "🌟" + match.name + "🌟"
        if match.age > 0 {
        cell.detailTextLabel?.text = "Age \(match.age), Teaches \(match.position)"
        } else {
            cell.detailTextLabel?.text = "Ageless, Teaches \(match.position)"
        }
        cell.imageView?.image = match.profilePicTop
        
        cell.imageView?.layer.cornerRadius = 14
        cell.imageView?.clipsToBounds = true
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      let match = matches[indexPath.row]

      performSegue(withIdentifier: "viewProfile", sender: match)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? ProfilesViewController {
          addVC.previousVC = self
        }

        if let completeVC = segue.destination as? ProfilesViewController {
          if let match = sender as? Matches {
            completeVC.selectedMatch = match
            completeVC.previousVC = self
          }
        }
    }


}
