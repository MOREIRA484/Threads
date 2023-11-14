//
//  AuthService.swift
//  Threads
//
//  Created by leonardo Moreira on 09/11/23.
//

import Firebase
import FirebaseFirestoreSwift

class AuthService {
    
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    //fun for firabse  registration
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await UserService.shared.fetchCurrentUser()
        } catch let error  {
            print("DEBUG: Fail to create user with error \(error.localizedDescription)")
        }
    }
    
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await upLoadUserData(withEmail: email, fullname: fullname, username: username, id: result.user.uid)
            print("DEBUG: Created user \(result.user.uid)")
        } catch let error  {
            print("DEBUG: Fail to create user with error \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut() // sings out on backend
        self.userSession =  nil // this removes session locally and update routing
        UserService.shared.reset() // sets current user object to nil
    }
    @MainActor
    private func upLoadUserData(withEmail
                                email: String,
                                fullname: String,
                                username: String,
                                id: String
    )
                  async throws {
        let user = User(id: id, fullName: fullname, email: email, username: username)
                      guard let userData = try? Firestore.Encoder().encode(user) else { return }
                      try await Firestore.firestore().collection("users").document(id).setData(userData)
                      UserService.shared.currentUser = user
    }
}
