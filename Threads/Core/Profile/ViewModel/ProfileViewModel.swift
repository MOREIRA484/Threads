//
//  ProfileViewModel.swift
//  Threads
//
//  Created by leonardo Moreira on 11/11/23.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("Debug: User in view model from combine is \(user)")
        }.store(in: &cancellables)
    }
}
