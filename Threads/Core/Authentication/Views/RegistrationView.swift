//
//  RegistrationView.swift
//  Threads
//
//  Created by leonardo Moreira on 07/11/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var passWord = ""
    @State private var fullName = ""
    @State private var userName = ""
    var body: some View {
        VStack {
            
            Spacer()
            
            Image("threads-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $passWord)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $fullName)
                    .modifier(ThreadsTextFieldModifier())
                    
                
                TextField("Enter your username", text: $userName)
                    .modifier(ThreadsTextFieldModifier())
                   
            }
            
            
            Button {
                
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
