//
//  User.swift
//  Tech Social Media App
//
//  Created by Jane Madsen on 2/22/23.
//

import Foundation

struct User {
    var name: String
    var imageName: String
    var techInterests: [String]
    var techCompanies: [String]
    var techDislikes: [String]
    var posts: [Post]
}

let jane = User(name: "Jane Madsen", imageName: "ProfilePic", techInterests: ["Coding", "Gaming", "Computer Building"], techCompanies: ["Nintendo", "Apple", "Sony"], techDislikes: ["Android", "Windows"], posts: [Post(
    date: Date(),
    content: """
I'm taking programming classes at MTECH! I'm learning a lot.

Right now, I'm working on a tech social media app. The one you're looking at!
"""
)])

