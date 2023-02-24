//
//  ViewController.swift
//  Tech Social Media App
//
//  Created by Jane Madsen on 2/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var profileNameLabel: UILabel!
    @IBOutlet var profileTechInterestsLabel: UILabel!
    @IBOutlet var profileFavoriteCompaniesLabel: UILabel!
    @IBOutlet var profileTechDislikesLabel: UILabel!
    @IBOutlet var mostRecentPostLabel: UILabel!
    
let currentUser = jane
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    func updateUI() {
        profileNameLabel.text = currentUser.name
        profileTechInterestsLabel.text = formatArray(array: currentUser.techInterests)
        profileFavoriteCompaniesLabel.text = formatArray(array: currentUser.techCompanies)
        profileTechDislikesLabel.text = formatArray(array: currentUser.techDislikes)
        mostRecentPostLabel.text = currentUser.posts[0].content
    }

    func formatArray(array: [String]) -> String {
        var output = ""
        for item in array {
            output += "\(item)\n"
        }
        while output.last == "\n" {
            output.removeLast()
        }
        return output
    }
    
}
