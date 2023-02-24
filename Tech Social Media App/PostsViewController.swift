//
//  PostsViewController.swift
//  Tech Social Media App
//
//  Created by Jane Madsen on 2/22/23.
//

import UIKit

class PostsViewController: UIViewController {

    @IBOutlet var postImageView: UIImageView!
    
    @IBOutlet var posterNameLabel: UILabel!
    
    @IBOutlet var postDateLabel: UILabel!
    
    @IBOutlet var postContentLabel: UILabel!
   
let currentUser = jane
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        postImageView.image = UIImage(named: currentUser.imageName)
        
        let imageViewSize = postImageView.bounds.size.height
        
        postImageView.layer.cornerRadius = imageViewSize / 2
        posterNameLabel.text = currentUser.name
        postDateLabel.text = currentUser.posts[0].date.formatted()
        postContentLabel.text = currentUser.posts[0].content
    }
}
