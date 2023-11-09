//
//  ProfileThreadFilter.swift
//  Threads
//
//  Created by leonardo Moreira on 08/11/23.
//

import Foundation


enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads 
    case replies
    case likes
    var title: String {
        switch self {
        case.threads: return "Threads"
        case.replies: return "Replies"
        case.likes: return "Likes"
        }
    }
    
    var id: Int { return self.rawValue}
}
