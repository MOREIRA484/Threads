//
//  User.swift
//  Threads
//
//  Created by leonardo Moreira on 11/11/23.
//

import Foundation


struct User: Identifiable, Codable {
    
    let id: String
    let fullName: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
