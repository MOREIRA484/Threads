//
//  AuthService.swift
//  Threads
//
//  Created by leonardo Moreira on 09/11/23.
//

import Firebase


class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Created user \(result.user.uid)")
        } catch let error  {
            print("DEBUG: Fail to create user with error \(error.localizedDescription)")
        }
    }
}
