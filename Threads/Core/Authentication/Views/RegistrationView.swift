//
//  RegistrationView.swift
//  Threads
//
//  Created by leonardo Moreira on 07/11/23.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image("threads-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $viewModel.email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $viewModel.passWord)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $viewModel.fullName)
                    .modifier(ThreadsTextFieldModifier())
                    
                
                TextField("Enter your username", text: $viewModel.username)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                   
            }
            
            
            Button {
                Task { try await viewModel.createrUser()}
            } label: {
                Text("Sing up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(12)
                   
            
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            
            
            
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        
                    
                    Text("Sing in")
                        .fontWeight(.semibold)
                        
                }
                .foregroundStyle(.black)
                .font(.footnote)
            }
        }
        .padding(.horizontal, 32)
    }
}

#Preview {
    RegistrationView()
}
