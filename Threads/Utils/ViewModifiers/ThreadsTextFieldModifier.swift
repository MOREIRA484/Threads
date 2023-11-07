//
//  ThreadsTextFieldModifier.swift
//  Threads
//
//  Created by leonardo Moreira on 07/11/23.
//

import SwiftUI


struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal, 5)
    }
}
