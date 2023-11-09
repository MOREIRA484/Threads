//
//  RegistrationViewModel.swift
//  Threads
//
//  Created by leonardo Moreira on 09/11/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    @Published   var email = ""
    @Published   var passWord = ""
    @Published   var fullName = ""
    @Published   var username = ""
    
    @MainActor
    func createrUser() async throws {
     try await   AuthService.shared.createUser(
            withEmail: email,
            password: passWord,
            fullname: fullName,
            username: username
        )
    }
}
