//
//  LoginViewModel.swift
//  Threads
//
//  Created by leonardo Moreira on 11/11/23.
//

import Foundation

class loginViewModel: ObservableObject {
    
    @Published   var email = ""
    @Published   var passWord = ""
   
    
    @MainActor
    func login() async throws {
        try await   AuthService.shared.login(withEmail: email, password: passWord)
    
    }
}
